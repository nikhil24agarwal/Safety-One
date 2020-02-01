import 'package:flutter/material.dart';
import 'package:okay1/ContactsMain.dart';
import 'package:okay1/TimerMain.dart';
import 'package:url_launcher/url_launcher.dart';

import 'TimerMain.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Safety One'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.call), title: Text("Contacts")),
          BottomNavigationBarItem(
              icon: Icon(Icons.map), title: Text("Safest Route"))
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          }
          if (index == 1) {
            launch('https://rocky-basin-11759.herokuapp.com/maps');
          }
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
      ),
      body: Column(children: <Widget>[
        InstantButton(),
        SafeButton(),
      ]),
    );
  }
}

class InstantButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        final snackBar = SnackBar(
          content: Text("All alerts send!"),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              final snackBar = SnackBar(
                content: Text("Alerts cancelled"),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        margin: EdgeInsets.only(top: 200.0, left: 100.0),
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0)),
        child: Text(
          "Instant Alerts!",
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class SafeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TimerMain()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 100.0),
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0)),
        child: Text(
          "Make me feel Safe",
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
