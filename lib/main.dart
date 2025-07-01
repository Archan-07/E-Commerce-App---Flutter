import 'package:e_comm_app/app.dart';
import 'package:e_comm_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_comm_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // Add Widget Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  // Init local Storage
  await GetStorage.init();
  // Todo : Await native splash until other items load

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Todo : Init Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()),);
  // Todo : Init Authentication

  runApp(const App());
}
