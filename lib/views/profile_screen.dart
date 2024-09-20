import 'package:flutter/material.dart';
import 'package:mizan_app/database/cache_helper.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = "profileScreen";
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: mediaQuery.width * .9,
              height: mediaQuery.height * .6,
              color: const Color(0xFFBEC6A0),
            ),
          ),
          Positioned(
            top: mediaQuery.height * .12,
            left: mediaQuery.height * .16,
            child: CircleAvatar(
              foregroundColor: const Color(0xFFBEC6A0),
              radius: mediaQuery.width * .2,
              backgroundColor: const Color(0xFFBEC6A0),
              child: CircleAvatar(
                  backgroundColor: const Color(0xFFBEC6A0),
                  radius: mediaQuery.width * .17,
                  backgroundImage: const AssetImage("assets/images/slogan.gif")),
            ),
          ),
          Positioned(
              top: mediaQuery.height * .32,
              left: mediaQuery.height * .2,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "${CacheHelper.getData(key: 'name')}",
                      style: const TextStyle(fontSize: 25),
                    ),
                    Text(
                      "${CacheHelper.getData(key: 'email')}",
                      style: const TextStyle(fontSize: 25),
                    ),
                    SfRadialGauge(axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        showLabels: false,
                        showTicks: false,
                        axisLineStyle: const AxisLineStyle(
                          thickness: 0.2,
                          cornerStyle: CornerStyle.bothCurve,
                          color: Colors.red,
                          thicknessUnit: GaugeSizeUnit.factor,
                        ),
                      )
                    ]),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
