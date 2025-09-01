import 'package:flutter/material.dart';
import 'package:zetaclone/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkMode ? darkModeColor : lightModeColor,
        leading: InkWell(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.only(left: 10.0),
            alignment: Alignment.center,
            child: Text("나중에", style: TextStyle(color: darkMode ? lightModeColor : darkModeColor, fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          onTap: () => {
            //when home page is not loaded
            if(Navigator.of(context).canPop()){
              Navigator.of(context).pop()
            }else{
              Navigator.of(context).push(_createRoute(Home()))
            }
          }
        )
      ),
      body: Container(
        alignment: Alignment.bottomLeft,
        color: darkMode ? darkModeColor : lightModeColor,
        child: Container(
          margin: const EdgeInsets.only(bottom: 70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20, left: 15.0),
                child: Text("내가 직접\n만드는 소설", style: TextStyle(color: darkMode ? lightModeColor : darkModeColor, fontSize: 39, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Flexible(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      color: const Color.fromARGB(255, 7, 123, 255),
                      alignment: Alignment.center,
                      height: 60,
                      child: Text("로그인", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Flexible(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      color: const Color.fromARGB(255, 7, 123, 255),
                      alignment: Alignment.center,
                      height: 60,
                      child: Text("회원가입", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              )
            ],
          )
          
        )
      )
    );
  }
}

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
