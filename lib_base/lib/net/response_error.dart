class ResponseError implements Exception {
  String code;
  String message;
  StackTrace stackTrace;

  ResponseError(this.code, this.message, {this.stackTrace});

  String toString() =>
      "ResponseError: " +
      (code ?? "") +
      (message ?? "") +
      (stackTrace ?? "").toString();
}
