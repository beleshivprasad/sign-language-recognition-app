import 'package:flutter/material.dart';
//Import Pages
import 'package:sign_language_recognition/pages/send_feedback.dart';
import 'package:sign_language_recognition/pages/sign_recognition.dart';
import 'package:sign_language_recognition/pages/contacts.dart';
import 'package:sign_language_recognition/pages/dashboard.dart';
import 'package:sign_language_recognition/pages/dictionary.dart';
import 'package:sign_language_recognition/pages/about.dart';
//Import Widgets
import 'widget/my_drawer_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  final String context = '';
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;
  String pageTitle = "Dashboard";

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.dictionary) {
      container = dictionaryPage();
    } else if (currentPage == DrawerSections.sign_recognition) {
      container = signRecognitionPage();
    } else if (currentPage == DrawerSections.about) {
      container = aboutPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(pageTitle),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                myDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myDrawerList() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Sign Recognition", Icons.camera,
              currentPage == DrawerSections.sign_recognition ? true : false),
          menuItem(3, "Dictionary", Icons.event,
              currentPage == DrawerSections.dictionary ? true : false),
          const Divider(),
          menuItem(4, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(5, "About Us", Icons.info_outline,
              currentPage == DrawerSections.about ? true : false),
          const Divider(),
          menuItem(6, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
              pageTitle = "Dashboard";
            } else if (id == 2) {
              currentPage = DrawerSections.sign_recognition;
              pageTitle = "Sign Recognition";
            } else if (id == 3) {
              currentPage = DrawerSections.dictionary;
              pageTitle = "Dictionary";
            } else if (id == 4) {
              currentPage = DrawerSections.contacts;
              pageTitle = "Contacts";
            } else if (id == 5) {
              currentPage = DrawerSections.about;
              pageTitle = "About Us";
            } else if (id == 6) {
              currentPage = DrawerSections.send_feedback;
              pageTitle = "Send Feedback";
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  dictionary,
  sign_recognition,
  about,
  send_feedback,
}
