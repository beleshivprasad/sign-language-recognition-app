import 'package:flutter/material.dart';
import 'package:sign_language_recognition/widget/video_player_screen.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
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
                  VideoPlayerScreen(videoName: 'con1'),
                  VideoPlayerScreen(videoName: 'con2'),
                  VideoPlayerScreen(videoName: 'con3'),
                  VideoPlayerScreen(videoName: 'con4'),
                  VideoPlayerScreen(videoName: 'con5'),
                  VideoPlayerScreen(videoName: 'con6'),
                  VideoPlayerScreen(videoName: 'con7'),
                  VideoPlayerScreen(videoName: 'con8'),
                  VideoPlayerScreen(videoName: 'con9'),
                  VideoPlayerScreen(videoName: 'con10'),
                  VideoPlayerScreen(videoName: 'con11'),
                  VideoPlayerScreen(videoName: 'con12'),
                  VideoPlayerScreen(videoName: 'con13'),
                  VideoPlayerScreen(videoName: 'con14'),
                  VideoPlayerScreen(videoName: 'con15'),
                  VideoPlayerScreen(videoName: 'con16'),
                  VideoPlayerScreen(videoName: 'con17'),
          
                ],
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20)),
          ),
        ));
  }
}

const dictionary = {
  "1": "Hello what is your Name?",
  "2": "How Are you",
  "3": "I am fine",
  "4": "What are you doing",
  "5": "What is the problem?",
  "6": "What does you father do?",
  "7": "What is you job?",
  "8": "where do you stay?",
  "9": "Shall i help you?",
  "10": "I am sorry",
  "11": "I am tired",
  "12": "sit down",
  "13": "take care",
  "14": "are you busy",
  "15": "Be carefull",
  "16": "Do not worry",
  "17": "All the best"
};
