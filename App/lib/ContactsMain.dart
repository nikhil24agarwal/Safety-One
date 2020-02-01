import 'dart:ui';

import 'package:contact_picker/contact_picker.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ContactPicker _contactPicker = new ContactPicker();
  Contact _contact;
  var arr = ['', '', '', '', ''];
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Contacts'),
        ),
        body: new Center(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new MaterialButton(
                elevation: 8.0,
                color: Colors.white,
                padding: EdgeInsets.all(32.0),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue)),
                child: new Text(
                  "Select upto 4 Contacts",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () async {
                  Contact contact = await _contactPicker.selectContact();
                  setState(() {
                    _contact = contact;
                  });
                  if (arr[a] != null && a < 5) {
                    a += 1;
                    arr[a] = _contact.toString();
                  } else {
                    arr[a] = _contact.toString();
                  }
                },
              ),
              new Text(
                arr[0] == null ? 'No contact selected.' : arr[0],
                style: TextStyle(
                  fontSize: 80,
                  fontFamily: 'Raleway Dots',
                  fontWeight: FontWeight.w500,
                ),
              ),
              new Text(
                arr[1] == null ? 'No contact selected.' : arr[1],
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Raleway Dots',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(),
              new Text(
                arr[2] == null ? 'No contact selected.' : arr[2],
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Raleway Dots',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(),
              new Text(
                arr[3] == null ? 'No contact selected.' : arr[3],
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Raleway Dots',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(),
              new Text(
                arr[4] == null ? 'No contact selected.' : arr[4],
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Raleway Dots',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
