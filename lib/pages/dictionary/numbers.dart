import 'package:flutter/material.dart';
import 'package:sign_language_recognition/widget/video_player_screen.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  var Numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Back'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      body: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView(
              children: Numbers.map(
                (e) => new Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/Numbers/Types/${e}.jpg",
                        fit: BoxFit.cover,
                        height: 250,
                        width: 250,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "${e}",
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.all(new Radius.circular(20)),
                    border: new Border.all(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                ),
              ).toList(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1)),
        ),
      ),
    );
  }
}
