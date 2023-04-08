import 'package:flutter/material.dart';
import 'package:orphans/app_strings.dart';

import 'card_object.dart';

class MyCharityTab extends StatelessWidget {
  const MyCharityTab({Key? key}) : super(key: key);

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
              children: [
                CustomButton(text: AppStrings.firstBasket, onPressed: () {}),
                CustomButton(text: AppStrings.secondBasket, onPressed: () {}),
                CustomButton(text: AppStrings.thirdBasket, onPressed: () {}),],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onPressed}) : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: Colors.green),
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: double.infinity,
        child: Text(
          text,
          textScaleFactor: 1.2,
          style: const TextStyle(fontSize: 20, fontFamily: 'stc', fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
