import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:mizan_app/constants.dart';
import 'package:mizan_app/views/currency.dart';
import 'package:mizan_app/views/masrof.dart';
import 'package:mizan_app/views/profile_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ميزان',
          style: TextStyle(
            fontFamily: kfontStyle4,
            fontSize: 40,
          ),
        ),
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/logo (2).png"),
                ),
              ),
              BubbleSpecialOne(
                text: '$userNameأهلا بك في الميزان يا ',
                color: kPrimaryColor2,
                tail: true,
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: kfontStyle2,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Currency();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryColor3,
              ),
              width: double.infinity,
              height: 120,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dolar.png'),
                    radius: 40,
                  ),
                  Text(
                    'حساب تحويل العملات الى الدولار',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: kfontStyle1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryColor3,
              ),
              width: double.infinity,
              height: 120,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/aqsat.jpg'),
                    radius: 40,
                  ),
                  Text(
                    'عرض الاقساط ومواعيدها',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: kfontStyle1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Masrof();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryColor3,
              ),
              width: double.infinity,
              height: 120,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/masrouf.png'),
                    radius: 40,
                  ),
                  Text(
                    'تنظيم المصروفات بالنسبة لدخلك الشهري',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: kfontStyle1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ProfileScreen();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryColor3,
              ),
              width: double.infinity,
              height: 120,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/data.jpg'),
                    radius: 40,
                  ),
                  Text(
                    'البيانات الشخصية',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: kfontStyle1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
