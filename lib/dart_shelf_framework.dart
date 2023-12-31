/// Dart Shelf Framework
///
/// A framework for building REST APIs using Dart and Shelf.
library;

export 'src/api/api_response.dart';
export 'src/api/api_error.dart';
export 'src/api/http_method.dart';
export 'src/api/type_definitions.dart';

export 'src/api/mixins/api_error_mixin.dart';
export 'src/api/mixins/api_response_mixin.dart';
export 'src/api/mixins/api_mixin.dart';
export 'src/api/mixins/api_route_mixin.dart';

export 'src/server/router_factory.dart';
export 'src/server/server_builder.dart';
export 'src/server/cors_config.dart';
export 'src/server/type_definitions.dart';

export 'src/server/mixins/server_mixin.dart';

export 'src/serialization/serializable.dart';
export 'src/serialization/serialization_extensions.dart';
