import 'package:flutter/material.dart';

final ButtonStyle buttonPrimary=ElevatedButton.styleFrom(
  minimumSize: Size(150, 50),
  backgroundColor: Color(0xFF606676),
  elevation: 0,
  shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.all(Radius.circular(50))
  ),
);