import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zetaclone/chat.dart';
import 'package:zetaclone/login.dart';
import 'package:zetaclone/models/character.dart';
import 'package:zetaclone/models/messageTests.dart';

bool darkMode = true;
bool loggedIn = true;

Color darkModeColor = const Color.fromARGB(255, 21, 21, 21);
Color lightModeColor = const Color.fromARGB(255, 255, 255, 255);

Color darkModePopUpBackgroundColor = const Color.fromARGB(255, 48, 48, 55);
Color lightModePopUpBackgroundColor = const Color.fromARGB(255, 221, 221, 221);

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zeta Clone',
      home: loggedIn ? Home() : LoginPage(),
    );
  }


}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('제타짭', style: TextStyle(color: darkMode ? lightModeColor : darkModeColor)),
          toolbarHeight: 70,
          backgroundColor: darkMode ? darkModePopUpBackgroundColor : lightModePopUpBackgroundColor,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: const Color.fromARGB(255, 7, 123, 255),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("로그인", style: TextStyle(color: Colors.white, fontSize: 18)),
                    )
                  ),
                  onTap: () => {
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) => LoginPage(),
                    // ))
                    Navigator.push(context, CupertinoPageRoute(
                      builder : (context) {
                        return LoginPage();
                      }
                    ))
                    
                  },
                )
              ),
            )
          ],
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
          color: darkMode ? darkModePopUpBackgroundColor : lightModePopUpBackgroundColor,
          child: SizedBox(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: InkWell(
                    onTap: () => {
                      setState(() {
                        darkMode = !darkMode;
                      })
                    },
                    child: Image.asset('assets/images/ryou.jpg'),
                  )
                )
              ],
            ),
          ) 
        ),
      );
      
  }
}
//

class CharacterItem extends StatefulWidget {
  final String name;
  final String description;
  const CharacterItem(this.name, this.description);

  @override
  State<CharacterItem> createState() => _CharacterItemState(name, description);
}

class _CharacterItemState extends State<CharacterItem> {
  final String name;
  final String description;
  _CharacterItemState(this.name, this.description);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      hoverColor: Colors.grey,
      highlightColor: Colors.grey,
      onTap: () => {
        // showDialog(context: context, builder: (BuildContext con){
        //   return AlertDialog(
        //     title: Text(name, style: TextStyle(color: darkMode ? lightModeColor : darkModeColor)),
        //     backgroundColor: darkMode ? darkModePopUpBackgroundColor : lightModePopUpBackgroundColor,
        //     content: SingleChildScrollView(
        //       child: Container(
        //         child: Container(
        //           child: Text(description, style: TextStyle(color: darkMode ? lightModeColor : darkModeColor))
        //         ),
        //       ),
        //     ),
        //     actions: [
        //       TextButton(
        //         onPressed: () => {
        //           Navigator.of(context).pop()
        //         },
        //         child: SizedBox(
        //           child: ClipRRect(
        //             borderRadius: BorderRadius.circular(20.0),
        //             child: Flexible(
        //               flex: 1,
        //               child: Container(
        //                 color: const Color.fromARGB(255, 7, 123, 255),
        //                 height: 50,
        //                 child: SizedBox(
        //                   child: Row(
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Text("네", style: TextStyle(color: lightModeColor, fontSize: 15),),
        //                     ],
        //                   )
        //                 )
        //               )
        //             )
        //           ),
        //         )
        //       )
        //     ],
        //   );
        // })
        Navigator.push(context, CupertinoPageRoute(builder: (context) {
          return ChatMain(
            character: testCharacter,
          );
        }))
      },
      child: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
           children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network('https://images-eds-ssl.xboxlive.com/image?url=4rt9.lXDC4H_93laV1_eHHFT949fUipzkiFOBH3fAiZZUCdYojwUyX2aTonS1aIwMrx6NUIsHfUHSLzjGJFxxsG72wAo9EWJR4yQWyJJaDaK1XdUso6cUMpI9hAdPUU_FNs11cY1X284vsHrnWtRw7oqRpN1m9YAg21d_aNKnIo-&format=source&h=210')
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: darkMode ? lightModeColor : darkModeColor),),
                        Text(description, style: TextStyle(fontSize: 15, color: darkMode ? lightModeColor : darkModeColor)),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite, color: darkMode ? lightModeColor : darkModeColor),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text("조아요", style: TextStyle(color: darkMode ? lightModeColor : darkModeColor))
                        )
                      ],
                    )
                  ],
                )
            ))
           ], 
          ),
        ),
    );
  }
}

@Deprecated('Use [CupertinoPageRoute] instead.')
Route _createRoute(Widget widg) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => widg,
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
      const start = Offset(-1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      var tween = Tween(begin: start, end: end).chain(CurveTween(curve: curve));
      final offsetAnimation = animation.drive(tween);
      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}


// class CharacterItem extends StatefulWidget {
//   final String name;
//   final String description;

//   const CharacterItem(this.name, this.description);

//   @override
//   build(context) {
    
//   }
// }