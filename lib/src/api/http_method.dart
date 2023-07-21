/// HTTP methods.
/// See [RFC 7231](https://tools.ietf.org/html/rfc7231#section-4.3).
enum HttpMethod {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE'),
  patch('PATCH'),
  head('HEAD'),
  options('OPTIONS'),
  trace('TRACE');

  /// The HTTP method as a string.
  final String value;

  const HttpMethod(this.value);
}
