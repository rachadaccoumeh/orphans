import 'package:flutter/material.dart';
import 'package:orphans/app_strings.dart';
import 'package:orphans/my_charity_tab.dart';
import 'package:orphans/my_info_tab.dart';
import 'package:orphans/my_orphans_tab.dart';
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
      title: AppStrings.appTitle,
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
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontFamily: 'stc', fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontFamily: 'stc', fontWeight: FontWeight.bold, color: Colors.black),
        ),
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
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: AppStrings.home,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.work),
                label: AppStrings.projects,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.credit_card),
                label: AppStrings.bail,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: AppStrings.myAccount,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
