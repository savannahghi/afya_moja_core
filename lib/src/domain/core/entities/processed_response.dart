import 'package:http/http.dart';

/// A blueprint for the data returned after processing a response from an
/// unauthenticated endpoint
class ProcessedResponse {
  final bool ok;
  final Response response;
  final String? message;
  final int? code;

  ProcessedResponse({
    required this.ok,
    required this.response,
    this.message,
    this.code,
  });
}
