import 'package:flutter/material.dart';
import 'package:frist_app/main.dart';
class  ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});
void main(){
  runApp(MyApp());
}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Flutter Rocks",
          style: TextStyle(
            color: Colors.brown,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("my fav Icon is", style: TextStyle(color: Colors.white),),
            Icon(Icons.person,color: Colors.white,size: 30,),
          ],
        ),
        Icon(Icons.settings,color: Colors.yellow,size: 30,),
        Icon(Icons.map,color: Colors.blue,size: 30,),
      ],
    );
  }
}
