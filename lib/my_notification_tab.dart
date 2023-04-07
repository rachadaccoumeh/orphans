import 'package:flutter/material.dart';

class MyNotificationTab extends StatelessWidget {
  const MyNotificationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen[100],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: const [
                Notification(text: 'اشعار اول'),
                Notification(text: 'اشعار اول'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(child: Text(text)),
      ),
    );
  }
}
