part of unsplash_api;

/// Base error.
sealed class ApiError implements Exception {}

/// Mixin to mix with class error based on bad status errors
mixin ServerError {
  /// Message the server respond with
  ServerErrorMessage? get message;
}

/// Throws when an unsupported for serialization response data is received.
final class SerializationError implements ApiError {
  /// Status code of a response
  final int statusCode;

  /// Target endpoint of a request
  final Uri? endpoint;

  /// Method used for [endpoint]
  final String? method;

  /// Original caught error (if there is one)
  final Object? originalError;

  /// Entity into which the data should have turned
  final Type entityType;

  /// Content-Type header of the response
  final String contentType;

  /// Encoded bytes of a response if there is a supported encoding.
  final String contentSlice;

  /// Slice of response bytes.
  final List<int> contentSliceRaw;

  SerializationError({
    required this.statusCode,
    this.endpoint,
    this.method,
    this.originalError,
    required this.entityType,
    required this.contentType,
    required this.contentSlice,
    required this.contentSliceRaw,
  });
}

/// Throws when 401 status code is received.
///
/// But, if the message of response can't be serialized, then [SerializationError]
/// is throws instead.
final class AuthorizationError with ServerError implements ApiError {
  @override
  final ServerErrorMessage? message;

  AuthorizationError({
    this.message,
  });
}

/// Unknown error
final class UnknownError with ServerError implements ApiError {
  /// Deserialized error
  @override
  final ServerErrorMessage? message;

  /// Response status code
  final int statusCode;

  UnknownError({
    this.message,
    required this.statusCode,
  });
}

/// Throws when 422 status code is received
final class EntityValidationError with ServerError implements ApiError {
  final Type? bodyType;

  @override
  final ServerErrorMessage? message;

  EntityValidationError({
    this.bodyType,
    this.message,
  });
}

final class PermissionError with ServerError implements ApiError {
  @override
  final ServerErrorMessage? message;

  final Uri? endpoint;
  final String? method;

  PermissionError({
    this.message,
    this.endpoint,
    this.method,
  });
}

/// The server error message.
final class ServerErrorMessage {
  /// List of errors the server respond with.
  final List<String> errors;

  ServerErrorMessage({
    required this.errors,
  });
}
