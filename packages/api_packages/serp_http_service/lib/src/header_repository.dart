class HeaderRepository {
  Future<Map<String, String>> getHeaders(String appId, String token) async {
    final Map<String, String> headers = {'Content-Type': 'application/json'};

    headers['X-ApplicationId'] = appId;
    headers['Authorization'] = 'Bearer $token';

    return headers;
  }
}
