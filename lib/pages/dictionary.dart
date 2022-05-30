import 'package:flutter/material.dart';
import 'package:sign_language_recognition/pages/dictionary/alphabets.dart';
import 'package:sign_language_recognition/pages/dictionary/calender.dart';
import 'package:sign_language_recognition/pages/dictionary/conversations.dart';
import 'package:sign_language_recognition/pages/dictionary/days.dart';
import 'package:sign_language_recognition/pages/dictionary/greetings.dart';
import 'package:sign_language_recognition/pages/dictionary/numbers.dart';

class dictionaryPage extends StatefulWidget {
  @override
  _dictionaryPageState createState() => _dictionaryPageState();
}

class _dictionaryPageState extends State<dictionaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            Colors.lightGreen.shade100,
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView(
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GreetingScreen())),
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 120,
                    height: 120,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/Greetings/Main/greetingsimg.jpg",
                      fit: BoxFit.cover,
                      height: 90,
                      width: 90,
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(20)),
                      border: new Border.all(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NumberScreen())),
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 120,
                    height: 120,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/Numbers/Main/123.jpg",
                      fit: BoxFit.cover,
                      height: 90,
                      width: 90,
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(20)),
                      border: new Border.all(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AlphabetScreen())),
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 120,
                    height: 120,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/Alphabets/Main/abc.jpg",
                      fit: BoxFit.cover,
                      height: 90,
                      width: 90,
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(20)),
                      border: new Border.all(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ConversationScreen())),
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 120,
                    height: 120,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/Conversation/Main/conversation.jpg",
                      fit: BoxFit.cover,
                      height: 90,
                      width: 90,
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(20)),
                      border: new Border.all(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CalendarScreen())),
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 120,
                    height: 120,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/Calender/Main/calender.jpg",
                      fit: BoxFit.cover,
                      height: 90,
                      width: 90,
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(20)),
                      border: new Border.all(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DaysScreen())),
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 120,
                    height: 120,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/Days/Main/days.jpg",
                      fit: BoxFit.cover,
                      height: 90,
                      width: 90,
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(20)),
                      border: new Border.all(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ],
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2)),
        ),
      ),
    );
  }
}
