class ErrorMessage extends Error {
  final String message;
  final int code;

  ErrorMessage(this.message, this.code);

  @override
  String toString() {
    return '$code: $message';
  }
}