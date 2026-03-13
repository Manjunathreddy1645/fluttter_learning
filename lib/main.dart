import 'package:flutter/material.dart';
import 'package:frist_app/row_widget.dart';
import 'container_widget.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,

          body: Center(
            child: MyRowWidget(),
          ),
      ),
    );
  }
}


