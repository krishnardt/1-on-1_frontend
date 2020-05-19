import 'package:aztlan/route_generator.dart';
import 'package:flutter/material.dart';
import 'shared/colors.dart';
// There is no need for adding bloc for forgot_password and onBoardingScreen
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aztlan',
      theme:BuildThemeData(),
      //home: LoginHomeWrapper(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

ThemeData BuildThemeData(){
  final baseTheme =ThemeData.light();
  return baseTheme.copyWith(
    primaryColor: DarkBlue,
    primaryColorDark: Black,
    primaryColorLight: SkyBlue,
    accentColor: LightBlue,
  );
}
