import 'package:flutter/material.dart';
class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            children: [
              Text("settings",
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.person,color: Colors.orange,size: 30,),
                  Text("Avatar", style: TextStyle(color: Colors.red,fontSize: 45),),
                  SizedBox(width: 660,),
                  Icon(Icons.arrow_forward_ios,color: Colors.purple,size: 30,),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.computer,color: Colors.orange,size: 30,),
                  Text("Linked device", style: TextStyle(color: Colors.red,fontSize: 45),),
                  SizedBox(width: 520,),
                  Icon(Icons.arrow_forward_ios,color: Colors.purple,size: 30,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.settings,color: Colors.orange,size: 30,),
                  Text("settings", style: TextStyle(color: Colors.red,fontSize: 45),),
                  SizedBox(width: 630,),
                  Icon(Icons.arrow_forward_ios,color: Colors.purple,size: 30,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.speaker,color: Colors.orange,size: 30,),
                  Text("Broadcast messages", style: TextStyle(color: Colors.red,fontSize: 45),),
                  SizedBox(width: 360,),
                  Icon(Icons.arrow_forward_ios,color: Colors.purple,size: 30,),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
