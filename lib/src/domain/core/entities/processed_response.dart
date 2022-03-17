import 'package:http/http.dart';

/// A blueprint for the data returned after processing a response from an
/// unauthenticated endpoint
class ProcessedResponse {
  ProcessedResponse({
    required this.ok,
    required this.response,
    this.message,
    required this.code,
  });

  final int code;
  final String? message;
  final bool ok;
  final Response response;
}
