import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class WorkRoomDotNetAuthUser {
  WorkRoomDotNetAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<WorkRoomDotNetAuthUser> workRoomDotNetAuthUserSubject =
    BehaviorSubject.seeded(WorkRoomDotNetAuthUser(loggedIn: false));
Stream<WorkRoomDotNetAuthUser> workRoomDotNetAuthUserStream() =>
    workRoomDotNetAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
