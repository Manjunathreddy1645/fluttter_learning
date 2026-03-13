import 'package:flutter/material.dart';
import 'container_widget.dart';
class MyRowWidget extends StatelessWidget {
  const MyRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IndianFlag(),
        Container(
          height: 30,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        Icon(
          Icons.snapchat,
          color: Colors.white,
        ),
        Icon(
          Icons.facebook,
          color: Colors.white,
        ),
      ],
    );
  }
}
