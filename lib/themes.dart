// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButtonStyle {
  static ButtonStyle buttonStyle() {
    return ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 89, 179, 253), shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5), 
      ), 
    );
  }

  static ButtonStyle buttonStyle2() {
    return ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 212, 174, 4), 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5), 
      ), 
    );
  }

  static ButtonStyle outlinedButtonStyle() {
    return OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5), 
      ),      
      side: const BorderSide(color: Color.fromARGB(206, 255, 255, 255)), 
      textStyle: const TextStyle(
        fontSize: 16, 
        fontWeight: FontWeight.bold, 
        color: Colors.white, 
      ),
    );
  }
}