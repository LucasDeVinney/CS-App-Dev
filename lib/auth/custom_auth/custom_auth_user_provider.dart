import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class CarbonSmartCTAAuthUser {
  CarbonSmartCTAAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<CarbonSmartCTAAuthUser> carbonSmartCTAAuthUserSubject =
    BehaviorSubject.seeded(CarbonSmartCTAAuthUser(loggedIn: false));
Stream<CarbonSmartCTAAuthUser> carbonSmartCTAAuthUserStream() =>
    carbonSmartCTAAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
