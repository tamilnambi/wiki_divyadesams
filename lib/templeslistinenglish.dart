import 'package:flutter/material.dart';
import 'package:wiki_divyadesams/webpageview.dart';

import 'englistList.dart';

class TemplesListInEnglish extends StatelessWidget {
  const TemplesListInEnglish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('108 Divya Desams'),
      ),
      body: ListView.builder(
          itemCount: englishList.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(englishList[index].name),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>WebViewPage(title: englishList[index].name, url: englishList[index].wikiUrl)));
              },
            );
          }),
    );
  }
}
