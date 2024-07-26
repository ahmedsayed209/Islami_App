import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled4/modules/Quran_View/quranView.dart';

class quranDetailsView extends StatefulWidget {
  static const String QuranDetail_Screen = "Quran_Screen_Route_Name";
  const quranDetailsView({super.key});

  @override
  State<quranDetailsView> createState() => _quranDetailsViewState();
}

class _quranDetailsViewState extends State<quranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var data =ModalRoute.of(context)?.settings.arguments as SuraData;
    var theme = Theme.of(context);
    if (content.isEmpty)loaddata(data.SuraNumber);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/home_bacck.png"),fit:BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("اسلامي",style:theme.appBarTheme.titleTextStyle,)),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20,
          bottom:80,
          right: 30,
          left: 30),
          padding: EdgeInsets.only(top: 20,
              bottom:30,
              right: 30,
              left: 20),
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.85),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("سورة ${data.SuraName}",style: theme.textTheme.bodyMedium,),
                  SizedBox(width: 10,),
                  Icon(Icons.play_circle_fill_rounded),
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Expanded(
                child: ListView.builder(itemCount: versesList.length,itemBuilder: (context,index) =>
                    Text("{${index+1}}${versesList[index]}",textAlign:TextAlign.center,)
                ),
              ),

            ],
          ),

          ),
        ),
    );

  }
  var content ="";
  List<String> versesList =[];
  Future<void> loaddata(String SuraNumber) async
  {
    content = await rootBundle.loadString("assets/files/${SuraNumber}.txt");
    versesList = content.split("\n");
    setState((){});
    print(content);

  }

}
