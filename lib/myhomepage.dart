import 'package:flutter/material.dart';
import 'package:wiki_divyadesams/templeslist.dart';
import 'package:wiki_divyadesams/templeslistinenglish.dart';
import 'package:wiki_divyadesams/templeslistintamil.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height*0.4,
            ),
            const Text('108 Divya Desams',
            style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
            SizedBox(
              height: height*0.02,
            ),
            const Text('Select Language',
            style: TextStyle(fontSize: 20.0),),
            SizedBox(
              height: height*0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                  //MaterialPageRoute(builder: (context)=>const TemplesListInEnglish()));
                      MaterialPageRoute(builder: (context)=>const TemplesList(language:'en')));
                },
                  child: Text('English')),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      //MaterialPageRoute(builder: (context)=>const TemplesListInTamil()));
                  MaterialPageRoute(builder: (context)=>const TemplesList(language:'ta')));
                },
                    child: Text('தமிழ்')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
