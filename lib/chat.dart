import 'package:flutter/material.dart';
import 'package:zetaclone/main.dart';
import 'package:zetaclone/models/character.dart';
import 'package:zetaclone/models/message.dart';
import 'package:zetaclone/models/messageTests.dart';
import 'package:zetaclone/models/speaker.dart';

class ChatMain extends StatefulWidget {
  ChatMain({Key? key, required this.character}) : super(key: key);

  @override
  State<ChatMain> createState() => _ChatMainState();
  final Character character;
  List<Message> messages = [];
}

class _ChatMainState extends State<ChatMain> {
  @override
  Widget build(BuildContext context) {
    // final bottomPadding = MediaQuery.of(context).padding.bottom;
    widget.messages = testMessages;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkMode ? darkModePopUpBackgroundColor : lightModePopUpBackgroundColor,
        title: Text(widget.character.name, style: TextStyle(color: darkMode ? lightModeColor : darkModeColor)),
        toolbarHeight: 70,
      ),
      body: Container(
        color: darkMode ? darkModeColor : lightModeColor,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                color: darkMode ? darkModeColor : lightModeColor,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: ListView.builder(
                    itemCount: widget.messages.length,
                    itemBuilder: (context, index){
                      final message = widget.messages[index];
                      bool isMe = message.sender.speakerType == SpeakerType.user;
                      return Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            if(!isMe)
                            CircleAvatar(
                              backgroundImage: Image.network(message.sender.id.toString()).image,
                              radius: 20.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(isMe ? 20.0 : 0.0),
                                  bottomRight: Radius.circular(isMe ? 0.0 : 20.0),
                                ),
                                color: isMe ? const Color.fromARGB(255, 7, 123, 255) : Colors.grey,
                              ),
                              
                              padding: EdgeInsets.all(10),
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.5
                              ),
                              margin: EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Text(widget.messages[index].text, style: TextStyle(color: darkMode ? lightModeColor : darkModeColor))
                            ),
                          ],
                        ));
                    },
                  ),
                )
              ),
            ),
            SafeArea(
              top: false,
              child: SafeArea(
                bottom: true,
                child: Container(
                  height: 60,
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.6
                  ),
                  color: darkMode ? darkModePopUpBackgroundColor : lightModePopUpBackgroundColor,
                  child: Row(
                    children: [
                      Flexible(
                        flex:1,
                        child: Container(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text("idk", style: TextStyle(color: darkMode ? lightModeColor : darkModeColor, fontSize: 30),),
                          )
                        )
                      ),
                      Flexible(
                        flex:4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            height: 50,
                            color: darkMode ? darkModeColor : lightModeColor,
                            alignment: Alignment.center,
                            child: Container(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextField(
                                minLines: 1,
                                maxLines: 10,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Message',
                                  
                                  hintStyle: TextStyle(color: darkMode ? darkModeColor : lightModeColor),
                                ),
                                style: TextStyle(color: darkMode ? lightModeColor : darkModeColor),
                              )
                            )
                          ),
                        )
                      ),
                      Flexible(
                        flex:1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  color: const Color.fromARGB(255, 7, 123, 255),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.send, color: Colors.white, size: 30,)
                                ),
                              ),
                            )
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}