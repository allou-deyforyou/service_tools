import 'package:flutter/widgets.dart' show WidgetsFlutterBinding;
import 'package:flutter/foundation.dart' show kReleaseMode;

import 'security_io.dart' if (dart.library.html) 'security_web.dart';

Future<void> runService(FlutterService service) {
  WidgetsFlutterBinding.ensureInitialized();
  setTrustedCertificates();

  if (kReleaseMode) {
    return service.production();
  } else {
    return service.development();
  }
}

abstract class FlutterService {
  const FlutterService();

  Future<void> production();
  Future<void> development();
}
