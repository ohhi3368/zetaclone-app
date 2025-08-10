import 'package:flutter/material.dart';

bool darkMode = true;

Color darkModeColor = const Color.fromARGB(255, 21, 21, 21);
Color lightModeColor = const Color.fromARGB(255, 255, 255, 255);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ZetaClone', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          color: darkMode ? darkModeColor : lightModeColor,
          child: ListView(
            children: [
              CharacterItem('야마다 료', '당신의 니면상 시뮬레이터'),
              CharacterItem('야먀댜 로', '당신의 NiggersNiggersNiggers'),
              CharacterItem('야마다료 2.0', 'AliExpress!'),
              CharacterItem('야마다 신고', '당신의 고소 대상'),
              CharacterItem('야마다 걸프레늗', '당신의 여자친구'),
              CharacterItem('야마다 료', '당신의 니면상 시뮬레이터'),
              CharacterItem('야먀댜 로', '당신의 NiggersNiggersNiggers'),
              CharacterItem('야마다료 2.0', 'AliExpress!'),
              CharacterItem('야마다 신고', '당신의 고소 대상'),
              CharacterItem('야마다 걸프레늗', '당신의 여자친구'),
              CharacterItem('야마다 료', '당신의 니면상 시뮬레이터'),
              CharacterItem('야먀댜 로', '당신의 NiggersNiggersNiggers'),
              CharacterItem('야마다료 2.0', 'AliExpress!'),
              CharacterItem('야마다 신고', '당신의 고소 대상'),
              CharacterItem('야마다 걸프레늗', '당신의 여자친구'),
              CharacterItem('야마다 료', '당신의 니면상 시뮬레이터'),
              CharacterItem('야먀댜 로', '당신의 NiggersNiggersNiggers'),
              CharacterItem('야마다료 2.0', 'AliExpress!'),
              CharacterItem('야마다 신고', '당신의 고소 대상'),
              CharacterItem('야마다 진새', '제거대상'),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [

                Image.asset('assets/images/ryou.jpg'),
                Image.asset('assets/images/ryou.jpg'),
                Image.asset('assets/images/ryou.jpg'),
              ],
            ),
          ) 
        ),
      )
    );
  }
}

class CharacterItem extends StatelessWidget {
  final String name;
  final String description;

  const CharacterItem(this.name, this.description);

  @override
  build(context) {
    return Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
           children: [
            Image.asset('assets/images/ryou.jpg', width: 150,),
            Flexible(child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(this.name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: darkMode ? lightModeColor : darkModeColor),),
                      Text(this.description, style: TextStyle(fontSize: 15, color: darkMode ? lightModeColor : darkModeColor)),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.favorite, color: darkMode ? lightModeColor : darkModeColor),
                      Text('911', style: TextStyle(color: darkMode ? lightModeColor : darkModeColor),)
                    ],
                  )
                ],
              ) 
            ), flex: 1,)
           ], 
          ),
        );
  }
}