import 'package:flutter/material.dart';
import 'package:wiki_divyadesams/tamilList.dart';
import 'package:wiki_divyadesams/webpageview.dart';

class TemplesListInTamil extends StatelessWidget {
  const TemplesListInTamil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('108 Divya Desams'),
      ),
      body: ListView.builder(
          itemCount: tamilList.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(tamilList[index].name),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>WebViewPage(title: tamilList[index].name, url: tamilList[index].wikiUrl)));
              },
            );
          }),
    );
  }
}
