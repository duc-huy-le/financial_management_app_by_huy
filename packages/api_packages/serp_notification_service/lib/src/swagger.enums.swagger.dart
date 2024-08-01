import 'package:json_annotation/json_annotation.dart';

enum Code {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue(200)
  value_200,
  @JsonValue(201)
  value_201,
  @JsonValue(202)
  value_202,
  @JsonValue(204)
  value_204,
  @JsonValue(400)
  value_400,
  @JsonValue(401)
  value_401,
  @JsonValue(403)
  value_403,
  @JsonValue(404)
  value_404,
  @JsonValue(405)
  value_405,
  @JsonValue(500)
  value_500,
  @JsonValue(501)
  value_501,
  @JsonValue(502)
  value_502,
  @JsonValue(503)
  value_503
}

const $CodeMap = {
  Code.value_200: 200,
  Code.value_201: 201,
  Code.value_202: 202,
  Code.value_204: 204,
  Code.value_400: 400,
  Code.value_401: 401,
  Code.value_403: 403,
  Code.value_404: 404,
  Code.value_405: 405,
  Code.value_500: 500,
  Code.value_501: 501,
  Code.value_502: 502,
  Code.value_503: 503
};

enum NotificationState {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue(0)
  value_0,
  @JsonValue(1)
  value_1,
  @JsonValue(2)
  value_2,
  @JsonValue(3)
  value_3,
  @JsonValue(4)
  value_4,
  @JsonValue(5)
  value_5,
  @JsonValue(6)
  value_6
}

const $NotificationStateMap = {
  NotificationState.value_0: 0,
  NotificationState.value_1: 1,
  NotificationState.value_2: 2,
  NotificationState.value_3: 3,
  NotificationState.value_4: 4,
  NotificationState.value_5: 5,
  NotificationState.value_6: 6
};
