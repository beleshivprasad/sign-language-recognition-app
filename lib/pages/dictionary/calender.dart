import 'package:flutter/material.dart';
import 'package:sign_language_recognition/widget/video_player_screen.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
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
                  VideoPlayerScreen(videoName: 'm1'),
                  VideoPlayerScreen(videoName: 'm2'),
                  VideoPlayerScreen(videoName: 'm3'),
                  VideoPlayerScreen(videoName: 'm4'),
                  VideoPlayerScreen(videoName: 'm5'),
                  VideoPlayerScreen(videoName: 'm6'),
                  VideoPlayerScreen(videoName: 'm7'),
                  VideoPlayerScreen(videoName: 'm8'),
                  VideoPlayerScreen(videoName: 'm9'),
                  VideoPlayerScreen(videoName: 'm10'),
                  VideoPlayerScreen(videoName: 'm11'),
                  VideoPlayerScreen(videoName: 'm12'),
                ],
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20)),
          ),
        ));
  }
}
