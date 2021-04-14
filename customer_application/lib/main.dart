import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:global_configuration/global_configuration.dart';

import 'generated/l10n.dart';
import 'route_generator.dart';
import 'src/helpers/app_config.dart' as config;
import 'src/helpers/custom_trace.dart';
import 'src/models/setting.dart';
import 'src/repository/settings_repository.dart' as settingRepo;
import 'src/repository/user_repository.dart' as userRepo;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final FirebaseApp fbApp = await Firebase.initializeApp (
    name: 'Wssal',
    options: Platform.isIOS || Platform.isMacOS ?
    FirebaseOptions(
      appId: '1:822325770612:ios:b8be60219c24d85e4fd421',
      apiKey: 'AIzaSyC_sVZFVVBwsKHHB3DK8ml3SLqYq-L8g1w',
      projectId: 'delivery-saudi',
      messagingSenderId: '822325770612',
      databaseURL: 'https://delivery-saudi-default-rtdb.firebaseio.com/',
    ) :
    FirebaseOptions(
      appId: '1:822325770612:android:1101b7886b60b16c4fd421',
      apiKey: 'AIzaSyC_sVZFVVBwsKHHB3DK8ml3SLqYq-L8g1w',
      projectId: 'delivery-saudi',
      messagingSenderId: '822325770612',
      databaseURL: 'https://delivery-saudi-default-rtdb.firebaseio.com/',
    ),
  );

  await GlobalConfiguration().loadFromAsset("configurations");
  print(CustomTrace(StackTrace.current, message: "base_url: ${GlobalConfiguration().getValue('base_url')}"));
  print(CustomTrace(StackTrace.current, message: "api_base_url: ${GlobalConfiguration().getValue('api_base_url')}"));
  runApp(MyApp(fbApp: fbApp,));
}

class MyApp extends StatefulWidget {
  MyApp({this.fbApp});
  final FirebaseApp fbApp;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    settingRepo.initSettings();
    settingRepo.getCurrentLocation();
    userRepo.getCurrentUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: settingRepo.setting,
        builder: (context, Setting _setting, _) {
          return MaterialApp(
              navigatorKey: settingRepo.navigatorKey,
              title: _setting.appName,
              initialRoute: '/Splash',
              onGenerateRoute: RouteGenerator.generateRoute,
              debugShowCheckedModeBanner: false,
              locale: _setting.mobileLanguage.value,
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              theme: _setting.brightness.value == Brightness.light
                  ? ThemeData(
                      fontFamily: 'ProductSans',
                      primaryColor: Colors.white,
                      floatingActionButtonTheme: FloatingActionButtonThemeData(elevation: 0, foregroundColor: Colors.white),
                      brightness: Brightness.light,
                      accentColor: config.Colors().mainColor(1),
                      dividerColor: config.Colors().accentColor(0.1),
                      focusColor: config.Colors().accentColor(1),
                      hintColor: config.Colors().secondColor(1),
                      textTheme: TextTheme(
                        headline5: TextStyle(fontSize: 22.0, color: config.Colors().secondColor(1), height: 1.3),
                        headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: config.Colors().secondColor(1), height: 1.3),
                        headline3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: config.Colors().secondColor(1), height: 1.3),
                        headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700, color: config.Colors().mainColor(1), height: 1.4),
                        headline1: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w300, color: config.Colors().secondColor(1), height: 1.4),
                        subtitle1: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500, color: config.Colors().secondColor(1), height: 1.2),
                        headline6: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700, color: config.Colors().mainColor(1), height: 1.3),
                        bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: config.Colors().secondColor(1), height: 1.2),
                        bodyText1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: config.Colors().secondColor(1), height: 1.3),
                        caption: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300, color: config.Colors().accentColor(1), height: 1.2),
                      ),
                    )
                  : ThemeData(
                      fontFamily: 'ProductSans',
                      primaryColor: Color(0xFF252525),
                      brightness: Brightness.dark,
                      scaffoldBackgroundColor: Color(0xFF2C2C2C),
                      accentColor: config.Colors().mainDarkColor(1),
                      dividerColor: config.Colors().accentColor(0.1),
                      hintColor: config.Colors().secondDarkColor(1),
                      focusColor: config.Colors().accentDarkColor(1),
                      textTheme: TextTheme(
                        headline5: TextStyle(fontSize: 22.0, color: config.Colors().secondDarkColor(1), height: 1.3),
                        headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: config.Colors().secondDarkColor(1), height: 1.3),
                        headline3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: config.Colors().secondDarkColor(1), height: 1.3),
                        headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700, color: config.Colors().mainDarkColor(1), height: 1.4),
                        headline1: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w300, color: config.Colors().secondDarkColor(1), height: 1.4),
                        subtitle1: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500, color: config.Colors().secondDarkColor(1), height: 1.2),
                        headline6: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700, color: config.Colors().mainDarkColor(1), height: 1.3),
                        bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: config.Colors().secondDarkColor(1), height: 1.2),
                        bodyText1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: config.Colors().secondDarkColor(1), height: 1.3),
                        caption: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300, color: config.Colors().secondDarkColor(0.6), height: 1.2),
                      ),
                    ));
        });
  }
}
