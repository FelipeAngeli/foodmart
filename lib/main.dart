import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/app_module.dart';
import 'package:fluttermart/app/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
