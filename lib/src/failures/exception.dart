class MyAfyaException implements Exception {
  MyAfyaException({required this.cause, required this.message, this.error});
  final dynamic message;
  final dynamic cause;
  final dynamic error;
}
