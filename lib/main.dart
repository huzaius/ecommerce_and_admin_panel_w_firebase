import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // Todo: Add widget Binding
  // Todo: Init local storage
  // Todo: Await Native Splash
  // Todo: Init Firebase

  // ...

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  // Todo: Init Auth

  runApp(const App());
}
