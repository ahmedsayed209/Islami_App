import 'package:flutter/material.dart';
import 'package:untitled4/modules/Hadeth_View/hadithView.dart';
import 'package:untitled4/modules/Quran_View/quranView.dart';
import 'package:untitled4/modules/Radio_View/radioView.dart';
import 'package:untitled4/modules/Settings_View/settingsView.dart';
import 'package:untitled4/modules/Tasbeh_View/tasbehView.dart';

class layout_view extends StatefulWidget {
  static const String RouteName = "layout_view";
  const layout_view({super.key});

  @override
  State<layout_view> createState() => _layout_viewState();
}

class _layout_viewState extends State<layout_view> {
  int stateIndex = 2;
  List<Widget> selectedWidget = [
    hadithView(),
    quranView(),
    radioView(),
    tasbehView(),
    settingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    var Themee = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/home_bacck.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("اسلامي")),
        ),
        body: selectedWidget[stateIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: stateIndex,
          onTap: (value) {
            setState(() {
              stateIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/Group 6.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/moshaf_blue.png")),
                label: "Moshaf"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/radio_blue.png")),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/sebha_blue.png")),
                label: "Seb7a"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
