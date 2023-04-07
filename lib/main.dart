import 'package:flutter/material.dart';
import 'package:orphans/AppStrings.dart';
import 'package:orphans/MyCharityTab.dart';
import 'package:orphans/MyInfoTab.dart';
import 'package:orphans/MyOrphansTab.dart';
import 'package:orphans/my_notification_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'stc',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Colors.green),
          ),
          hintStyle: const TextStyle(
            fontFamily: 'stc',
            color: Colors.black,
          ),
        ),
        primarySwatch: Colors.green,
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.green,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: const Text(
              AppStrings.myAccount,
              style: TextStyle(color: Colors.green, fontFamily: 'stc', fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: DefaultTabController(
            length: 4,
            child: Column(
              children: <Widget>[
                Container(
                  constraints: const BoxConstraints.expand(height: 50),
                  child: const TabBar(
                    tabs: [
                      Tab(text: AppStrings.myInfo),
                      Tab(text: AppStrings.myCharity),
                      Tab(text: AppStrings.myOrphans),
                      Tab(text: AppStrings.myNotification),
                    ],
                    labelColor: Colors.black,
                    labelStyle: TextStyle(fontFamily: 'stc', fontWeight: FontWeight.bold),
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Center(
                        child: MyInfoTab(),
                      ),
                      Center(
                        child: MyCharityTab(),
                      ),
                      Center(
                        child: MyOrphansTab(),
                      ),
                      Center(
                        child: MyNotificationTab(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
