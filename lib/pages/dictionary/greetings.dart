import 'package:flutter/material.dart';
import 'package:sign_language_recognition/widget/video_player_screen.dart';

class GreetingScreen extends StatefulWidget {
  const GreetingScreen({Key? key}) : super(key: key);

  @override
  State<GreetingScreen> createState() => _GreetingScreenState();
}

class _GreetingScreenState extends State<GreetingScreen> {
  var Greetings = ['gm', 'gn', 'gv', 'gn'];
  // var Greetings = [
  //   '1',
  //   '2',
  //   '3',
  //   '4',
  //   '5',
  //   '6',
  //   '7',
  //   '8',
  //   '9',
  //   '10',
  //   '11',
  //   '12',
  //   '13',
  //   '14',
  //   '15',
  //   '16',
  //   '17'
  // ];
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
                children: [
                  VideoPlayerScreen(videoName: 'ga'),
                  VideoPlayerScreen(videoName: 'gm'),
                  VideoPlayerScreen(videoName: 'gn'),
                  VideoPlayerScreen(videoName: 'ge'),
                ],
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,crossAxisSpacing: 20,mainAxisSpacing: 20)),
          ),
        ));
  }
}

const greetings = {
  "gm": "Good morning",
  "gn": "Good Night",
  "ge": "Good Evening",
  "ga": "Good Afternoon"
};
// const dictionary = {
//   "1": "Hello what is your Name?",
//   "2": "How Are you",
//   "3": "I am fine",
//   "4": "What are you doing",
//   "5": "What is the problem?",
//   "6": "What does you father do?",
//   "7": "What is you job?",
//   "8": "where do you stay?",
//   "9": "Shall i help you?",
//   "10": "I am sorry",
//   "11": "I am tired",
//   "12": "sit down",
//   "13": "take care",
//   "14": "are you busy",
//   "15": "Be carefull",
//   "16": "Do not worry",
//   "17": "All the best"
// };
