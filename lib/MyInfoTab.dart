import 'package:flutter/material.dart';
import 'package:orphans/AppStrings.dart';

class MyInfoTab extends StatelessWidget {
  const MyInfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // add margin to the start of the text
                    Text(AppStrings.name),
                    TextField(
                      decoration: InputDecoration(),
                    ),
                    Text(AppStrings.phoneNumber),
                    TextField(
                      decoration: InputDecoration(),
                    ),
                    Text(AppStrings.email),
                    TextField(
                      decoration: InputDecoration(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: ElevatedButton(
              //change button width to 100
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              onPressed: () {},
              child: const Text(AppStrings.save,style: TextStyle(fontSize: 20, fontFamily: 'stc', fontWeight: FontWeight.bold),),
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
