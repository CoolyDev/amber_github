import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'DataHandler/appData.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'themes/app_theme.dart';
import 'package:provider/provider.dart';
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
DatabaseReference usersRef = FirebaseDatabase.instance.reference().child("users");
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
    ChangeNotifierProvider (
      create: (context)=>AppData(),
      child: GetMaterialApp(
        initialRoute: AppRoutes.SPLASH_SCREEN,
        getPages: AppPages.list,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Nunito'),
    darkTheme: AppTheme.dark,
    themeMode: ThemeMode.system,
    ));
  }
}
