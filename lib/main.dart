import 'package:frist_app/profile_screen/profile_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:frist_app/destinations_page.dart';
import 'package:frist_app/profile_screen/profile_screen_page.dart';
import 'package:frist_app/stack_widget_practice.dart';
import 'package:frist_app/stack_widget_practice.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StackWidgetPractice();
  }
}