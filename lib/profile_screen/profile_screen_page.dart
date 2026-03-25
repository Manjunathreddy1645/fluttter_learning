import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfff7f8fc),
        appBar: AppBar(
          backgroundColor: Color(0xff4a56e2),
          leading: Icon(Icons.menu, color: Colors.white,),
          title: Text(
            "My Profile",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          actions: [
            Icon(Icons.search, color: Colors.white,),
          ],
        ),

        // body
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Container(
                    //   height: 110,
                    //   width: 110,
                    //   decoration: BoxDecoration(
                    //       color: Color(0xffeeedfe),
                    //       shape: BoxShape.circle,
                    //       border: Border.all(
                    //         color: Color(0xffafa9ec),
                    //         width: 5,
                    //       )
                    //   ),
                    // child: Center(
                    //   child: Text(
                    //     "MR",
                    //     style: TextStyle(
                    //       color: Color(0xff3c348d),
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 40,
                    //     ),
                    //   ),
                    // ),

                    //),
                    CircleAvatar(
                      backgroundImage:AssetImage("assets/images/1111.png"),
                      radius: 50,
                    ),

                    SizedBox(width: 20,),

                    // Details
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "G K Mahita Reddy",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 23,
                          ),
                        ),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Bangalore India",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                            fontSize: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),

                // Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DetailsContainer(mainText: "128", subText: "Projects"),
                      DetailsContainer(mainText: "4.9", subText: "Rating"),
                      DetailsContainer(mainText: "4yr", subText: "Experience"),
                      DetailsContainer(mainText: "4yr", subText: "Experience")
                    ],
                  ),
                ),


                SizedBox(height: 20,),

                Text(
                  "Quick Actions",
                  style: TextStyle(
                      color: Color(0xff444441),
                      fontSize: 26,
                      fontWeight: FontWeight.w600
                  ),
                ),

                SizedBox(height: 20,),
                MyContainer(mainText: "Edit Profile", subText: "update your info",myColor: Color(0xffe6f1fb), myIcon: Icons.person, myIconColor: Color(0xff185fa5),),
                SizedBox(height: 20,),
                MyContainer(mainText: "My Projects", subText: "view all work",myColor: Color(0xffe1f5ee), myIcon: Icons.coffee_rounded, myIconColor: Color(0xff0f6e56),),
                SizedBox(height: 20,),
                MyContainer(mainText: "Analytics", subText: "Performance stats", myColor: Color(0xfffaeeda), myIcon: Icons.analytics_outlined, myIconColor: Color(0xff854f0b),),
                SizedBox(height: 20,),
                MyContainer(mainText: "Notifications", subText: "view alerts", myColor: Color(0xfffaeeda), myIcon: Icons.notification_add, myIconColor: Color(0xff854f0b),),
                SizedBox(height: 20,),
                MyContainer(mainText: "Logout", subText: "sign out account", myColor: Color(0xfffaeeda), myIcon: Icons.logout, myIconColor: Color(0xff854f0b),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class DetailsContainer extends StatelessWidget {
  String mainText;
  String subText;
  DetailsContainer({super.key, required this.mainText, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Color(0xffd3d1c7),
            width: 2
        ),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              mainText,
              style: TextStyle(
                color: Color(0xff4a56e3),
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              subText,
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
    );
  }
}


class MyContainer extends StatelessWidget {
  IconData myIcon;
  Color myIconColor;
  Color myColor;
  String mainText;
  String subText;
  MyContainer({super.key, required this.mainText, required this.subText, required this.myColor, required this.myIcon, required this.myIconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xffd3d1c7),
          width: 2,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: myColor,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Icon(myIcon, color: myIconColor,),
            ),

            SizedBox(width: 17,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainText,
                  style: TextStyle(
                    color: Color(0xff1a1a2e),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subText,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(width: 60,),
            Icon(Icons.arrow_forward_ios, color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}