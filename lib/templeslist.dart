import 'package:flutter/material.dart';
import 'package:wiki_divyadesams/tamilList.dart';
import 'package:wiki_divyadesams/webpageview.dart';

import 'englistList.dart';

class TemplesList extends StatefulWidget {
  final String language;
  const TemplesList({super.key, required this.language});

  @override
  State<TemplesList> createState() => _TemplesListState();
}

class _TemplesListState extends State<TemplesList> {

  List templesList = [];

  @override
  void initState(){
    super.initState();
    if(widget.language == 'en') {
      templesList = List.from(englishList);
    }
    else{
      templesList = List.from(tamilList);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('108 Divya Desams'),
      ),
      body: ListView.builder(
          itemCount: templesList.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(templesList[index].name),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>WebViewPage(title: templesList[index].name, url: templesList[index].wikiUrl)));
              },
            );
          }),
    );
  }
}
