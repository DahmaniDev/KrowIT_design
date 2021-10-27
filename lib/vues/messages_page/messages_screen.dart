import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'components/message.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  List<Message> messages = <Message>[];
  List<MaterialColor> myCustomMaterialColors = <MaterialColor>[];
  final random = Random();
  double _width = 56.0;
  bool isExtended = false;
  double appBarElevation = 0;

  @override
  void initState() {
    createSomePredefinedColors();
    createDummyData();
    super.initState();
  }

  void createSomePredefinedColors() {
    myCustomMaterialColors.add(Colors.yellow);
    myCustomMaterialColors.add(Colors.orange);
    myCustomMaterialColors.add(Colors.purple);
    myCustomMaterialColors.add(Colors.pink);
    myCustomMaterialColors.add(Colors.blue);
  }

  void createDummyData() {
    messages.add(Message(
        from: "Ahmed",
        message: "Hey Dahmani, are you interested in doing some work for me ?",
        isRead: false,
        isInContactList: true,
        backgroundColor: myCustomMaterialColors[
            random.nextInt(myCustomMaterialColors.length)]));
    messages.add(Message(
        from: "Maryem",
        message: "You : Thank you !",
        isRead: true,
        isInContactList: true,
        backgroundColor: myCustomMaterialColors[
            random.nextInt(myCustomMaterialColors.length)]));
    messages.add(Message(
        from: "Oussama",
        message: "Called you to inform something, will let you know later on",
        isRead: false,
        isInContactList: true,
        backgroundColor: myCustomMaterialColors[
            random.nextInt(myCustomMaterialColors.length)]));
    messages.add(Message(
        from: "Sahar",
        message: "Got it",
        isRead: true,
        isInContactList: true,
        backgroundColor: myCustomMaterialColors[
            random.nextInt(myCustomMaterialColors.length)]));
    messages.add(Message(
        from: "Mohamed",
        message: "You : Yes will be there",
        isRead: true,
        isInContactList: true,
        backgroundColor: myCustomMaterialColors[
            random.nextInt(myCustomMaterialColors.length)]));
    messages.add(Message(
        from: "Emna",
        message: "2 Missed call",
        isRead: false,
        isInContactList: true,
        backgroundColor: myCustomMaterialColors[
            random.nextInt(myCustomMaterialColors.length)]));
    messages.add(Message(
        from: "Akrem",
        message: "I have bought it for you",
        isRead: false,
        isInContactList: true,
        backgroundColor: myCustomMaterialColors[
            random.nextInt(myCustomMaterialColors.length)]));
    messages.add(Message(
        from: "Hiba",
        message: "Dahmani, Are you available right now?",
        isRead: false,
        isInContactList: true,
        backgroundColor: myCustomMaterialColors[
            random.nextInt(myCustomMaterialColors.length)]));
    messages.add(Message(
        from: "Ismail",
        message: "You : Are you there?",
        isRead: true,
        isInContactList: true,
        backgroundColor: myCustomMaterialColors[
            random.nextInt(myCustomMaterialColors.length)]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.send),
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Container(
          margin: EdgeInsets.only(top: 30.0),
          color: Colors.white,
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification is UserScrollNotification) {
                switch (scrollNotification.direction) {
                  case ScrollDirection.reverse:
                    _extendFab(true);
                    break;
                  case ScrollDirection.forward:
                    _extendFab(false);
                    break;
                  case ScrollDirection.idle:
                    break;
                }
              }
            },
            child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor:
                          messages[index].backgroundColor.withOpacity(0.3),
                      radius: 23,
                      child: messages[index].isInContactList
                          ? Text(
                              '${messages[index].from.substring(0, 1)}',
                              style: TextStyle(
                                  fontSize: 22,
                                  color:
                                      messages[index].backgroundColor.shade800),
                            )
                          : Icon(
                              Icons.person,
                              size: 30,
                              color: messages[index].backgroundColor.shade800,
                            ),
                    ),
                    title: Text(
                      '${messages[index].from}',
                      style: TextStyle(
                          fontWeight: messages[index].isRead
                              ? FontWeight.normal
                              : FontWeight.bold,
                          color: messages[index].isRead ? null : Colors.black),
                    ),
                    subtitle: Text(
                      '${messages[index].message}',
                      style: TextStyle(
                          fontWeight: messages[index].isRead
                              ? FontWeight.normal
                              : FontWeight.bold,
                          color: messages[index].isRead ? null : Colors.black),
                    ),
                  );
                }),
          )),
    );
  }

  _extendFab(bool isExtend) {
    setState(() {
      isExtended = isExtend;
      _width = isExtended ? 135 : 56;
      appBarElevation = isExtend ? 5 : 0;
    });
  }
}
