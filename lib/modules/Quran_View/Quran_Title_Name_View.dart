import 'package:flutter/material.dart';
import 'package:untitled4/modules/Quran_View/quranView.dart';

class SuraTitleView extends StatelessWidget {
final SuraData data;
    SuraTitleView({required this.data,super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  Row(
      children: [
        Expanded(child: Text(data.SuraVerseNumber,style:theme.textTheme.bodyMedium,textAlign: TextAlign.center,)),
        SizedBox(height:40,child: VerticalDivider(thickness:5,),),
        Expanded(child: Text(data.SuraName,style:theme.textTheme.bodyMedium,textAlign: TextAlign.center,)),
      ],
    );
  }
}
