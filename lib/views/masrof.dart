import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:mizan_app/constants.dart';

class Masrof extends StatefulWidget {
  const Masrof({super.key});

  @override
  State<Masrof> createState() => _MasrofState();
}

class _MasrofState extends State<Masrof> {
  var masrof = 300.toString();
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
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/logo (2).png"),
                ),
              ),
              BubbleSpecialOne(
                text:
                    'في هذه الصفحة يتم عرض افضل نسبة لتنظيم مصروفات خلال مرتبك',
                color: kPrimaryColor2,
                tail: true,
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: kfontStyle2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kPrimaryColor4,
            ),
            padding: const EdgeInsets.only(top: 15, left: 50),
            height: 80,
            width: 150,
            child: Text(
              masrof,
              style: const TextStyle(
                fontSize: 40,
                fontFamily: kfontStyle1,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 150,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kPrimaryColor,
                  border: Border.all(color: kPrimaryColor2),
                ),
                child: const Column(
                  children: [
                    Text(
                      'مصروفاتك الاساسية الثابتة',
                      style: const TextStyle(
                          fontFamily: kfontStyle1,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    CircularProgressIndicator(
                      strokeAlign: 15,
                      backgroundColor: kPrimaryColor2,
                    ),
                    Text("فواتير الكهرباء والماء"),
                    Text("مصاريف التعليم"),
                    Text("الرعايةالصحية"),
                    Text("النقل"),
                    Text("الاتصالات"),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 150,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kPrimaryColor,
                  border: Border.all(color: kPrimaryColor2),
                ),
                child: const Column(
                  children: [
                    Text(
                      'مصروفاتك الاساسية الثابتة',
                      style: const TextStyle(
                          fontFamily: kfontStyle1,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    CircularProgressIndicator(
                      strokeAlign: 15,
                      backgroundColor: kPrimaryColor2,
                    ),
                    Text("فواتير الكهرباء والماء"),
                    Text("مصاريف التعليم"),
                    Text("الرعايةالصحية"),
                    Text("النقل"),
                    Text("الاتصالات"),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
