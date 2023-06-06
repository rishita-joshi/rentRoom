class NetworkResult {
  NetworkResultType networkResultType;
  String? result;

  NetworkResult._(this.networkResultType, this.result);

  static NetworkResult noInternet() {
    return NetworkResult._(NetworkResultType.NO_INTERNET, null);
  }

  static NetworkResult success(String data) {
    return NetworkResult._(NetworkResultType.SUCCESS, data);
  }

  static NetworkResult error(String data) {
    return NetworkResult._(NetworkResultType.ERROR, data);
  }

  static NetworkResult timeout(String data) {
    return NetworkResult._(NetworkResultType.TIMEOUT, data);
  }

  static NetworkResult notFound404() {
    return NetworkResult._(NetworkResultType.NOT_FOUND_404, null);
  }

  @override
  String toString() {
    return 'NetworkResult{networkResultType: $networkResultType, data: $result}';
  }
}

enum NetworkResultType {
  SUCCESS,
  ERROR,
  NO_INTERNET,
  TIMEOUT,
  NOT_FOUND_404,
}
