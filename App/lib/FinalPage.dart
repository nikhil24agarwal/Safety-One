import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sending Alerts.."),
      ),
      body: Center(
        child: Text('All selected contacts have been alerted successfully!'),
      ),
    );
  }
}
