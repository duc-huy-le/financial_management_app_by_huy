import 'dart:convert';

import 'package:encrypt/encrypt.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:pointycastle/asymmetric/api.dart';

class StorageService {
  /* cSpell:disable */
  final String _privateKey = 'deesqjQfpr6rFHdZi7ApM2LfrWOJfh9R';

  Future<String> readDataEncrypt(String keyword) async {
    try {
      final key = Key.fromUtf8(_privateKey);
      final iv = IV.fromLength(16);
      final encrypter = Encrypter(AES(key));

      var box = await getBox<String>("storage");
      String data = box.get(keyword.toLowerCase()) ?? "";
      final decrypted = encrypter.decrypt64(data, iv: iv);
      return decrypted;
    } catch (e) {
      return '';
    }
  }

  Future<void> writeDataEncrypt(String keyword, String data) async {
    var box = await getBox<String>("storage");
    final key = Key.fromUtf8(_privateKey);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    final encrypted = encrypter.encrypt(data, iv: iv);
    box.put(keyword.toLowerCase(), encrypted.base64);
  }

  Future<String> EncryptRSA(String data) async {
    final publicPem = await rootBundle.loadString('assets/RSA/serp-rsa.pub.pem');
    final publicKey = await RSAKeyParser().parse(publicPem) as RSAPublicKey;;

    final plainText = data;
    final encrypter = Encrypter(RSA(publicKey: publicKey));

    final encrypted = encrypter.encrypt(plainText);

    return encrypted.base64;
  }

  Future<String> readData(String keyword) async {
    var box = await getBox<String>("storage");
    String data = box.get(keyword.toLowerCase()) ?? "";
    return data;
  }

  Future<void> writeData(String keyword, String data) async {
    var box = await getBox<String>("storage");
    box.put(keyword.toLowerCase(), data);
  }

  Future<Box<T>> getBox<T>(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox<T>(boxName);
    }
    return Hive.box<T>(boxName);
  }

  Future<void> writeDataObj<T>(String keyword, T data) async {
    var box = await getBox<String>("storage" + keyword.toLowerCase());
    box.put(keyword.toLowerCase(), jsonEncode(data));
  }

  Future<T?> readDataObj<T>(
      String keyword, T Function(Map<String, dynamic> json) fromJsonFn) async {
    try {
      var box = await getBox<String>("storage" + keyword.toLowerCase());
      var dataStorage = box.get(keyword.toLowerCase());
      if (dataStorage != null) {
        return fromJsonFn(jsonDecode(dataStorage));
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<void> writeDataList<T>(String keyword, List<T> data) async {
    var box = await getBox<List<String>>("storage" + keyword.toLowerCase());
    var dataWrite = data.map((e) => jsonEncode(e)).toList();
    box.put(keyword.toLowerCase(), dataWrite);
  }

  Future<List<T>?> readDataList<T>(
      String keyword, T Function(Map<String, dynamic> json) fromJsonFn) async {
    try {
      var box = await getBox<List<String>>("storage" + keyword.toLowerCase());
      var dataStorage = box.get(keyword.toLowerCase());
      if (dataStorage != null) {
        return dataStorage.map((e) => fromJsonFn(jsonDecode(e))).toList();
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<void> deleteData(String keyword) async {
    var box = await getBox<String>("storage");
    box.delete(keyword.toLowerCase());
  }
}
