import 'package:flutter/material.dart';
import 'package:untitled4/layout/layout_view.dart';
import 'package:untitled4/modules/Quran_View/Quran_Detail_Titles.dart';
import 'package:untitled4/modules/Quran_View/quranView.dart';
import 'package:untitled4/modules/splashView/splash_view.dart';

import 'core/application_theme_manager.dart';

void main()
{
  runApp(MyApplicationIsalami());
}

class MyApplicationIsalami extends StatelessWidget
{
  const MyApplicationIsalami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IslamiApp",
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightThemeData,
      initialRoute: "/",
      routes: {
        SplashView.routeName : (context) => SplashView(),
        layout_view.RouteName :(context) =>layout_view(),
        quranDetailsView.QuranDetail_Screen :(context)=> quranDetailsView(),
      },
    );
  }

}