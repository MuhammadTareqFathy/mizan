import 'package:flutter/material.dart';
import 'package:mizan_app/database/cache_helper.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "homescreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "${CacheHelper.getData(key: 'name')}",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
