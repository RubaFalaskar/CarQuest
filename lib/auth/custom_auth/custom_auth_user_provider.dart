import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class CarQuestAuthUser {
  CarQuestAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<CarQuestAuthUser> carQuestAuthUserSubject =
    BehaviorSubject.seeded(CarQuestAuthUser(loggedIn: false));
Stream<CarQuestAuthUser> carQuestAuthUserStream() => carQuestAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
