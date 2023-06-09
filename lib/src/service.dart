import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

import 'security_io.dart' if (dart.library.html) 'security_web.dart';

Future<void> runService(LessService service) {
  WidgetsFlutterBinding.ensureInitialized();
  setTrustedCertificates();

  if (kReleaseMode) {
    return service.production();
  } else {
    return service.development();
  }
}

abstract class LessService {
  const LessService();

  Future<void> production();
  Future<void> development();
}
