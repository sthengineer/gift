class AppError extends Error {
  final String message;

  AppError(this.message);

  @override
  String toString() {
    return 'AppError{message: $message}';
  }
}