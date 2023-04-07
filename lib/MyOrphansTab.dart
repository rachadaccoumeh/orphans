import 'package:flutter/material.dart';
import 'package:orphans/AppStrings.dart';

class MyOrphansTab extends StatelessWidget {
  const MyOrphansTab({Key? key}) : super(key: key);

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(AppStrings.orphansName),
                    Text(AppStrings.bailType),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                    Text(AppStrings.healthBail),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                    Text(AppStrings.educationBail),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                    Text(AppStrings.livingBail),
                  ],
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: double.infinity,
                  child: Text(AppStrings.bailRequest),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(AppStrings.bailType),
                    Text("حالة الطلب"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(AppStrings.educationBail),
                    Text("قيد التنفيذ"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(AppStrings.healthBail),
                    Text("لم يكتمل"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
