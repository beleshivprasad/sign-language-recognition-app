import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.white,
          Colors.lightGreen.shade100,
        ],
      )),
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(
                          Icons.email_outlined,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'shivprasadoctomusprime@gmail.com',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(
                          Icons.phone_outlined,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          '+91 9284245945',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(
                          Icons.location_city,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Walchand College of Engieering',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}
