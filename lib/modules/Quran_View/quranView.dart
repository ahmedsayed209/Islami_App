import 'package:flutter/material.dart';

class quranView extends StatelessWidget {
  const quranView({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text(
        "Quran_View",
        style: TextStyle(
            fontFamily: "El Messeri",
            fontSize: 15,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
