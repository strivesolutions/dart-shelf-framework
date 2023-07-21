enum HttpMethod {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE'),
  patch('PATCH'),
  head('HEAD'),
  options('OPTIONS'),
  trace('TRACE');

  final String value;

  const HttpMethod(this.value);
}
