import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: DrawerWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.2,
          // iconTheme: IconThemeData(size: 25, color: Colors.black),
          title: TabWebList()),
      body: ListView(
        children: [
          SizedBox(
            height: height - 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SansBold(
                          text: "Hello I'm ",
                          size: 15,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    SansBold(
                      text: "Zaw Min Khant",
                      size: 55,
                    ),
                    Sans(
                      text: "Flutter Developer",
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 15,
                        ),
                        Sans(
                          text: "mzaw17591@gmail.com",
                          size: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 15,
                        ),
                        Sans(
                          text: "06-269-011-50",
                          size: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 15,
                        ),
                        Sans(
                          text: "เอกเจริญ Lak Hok, Mueang Pathum Thani",
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.tealAccent,
                  radius: 106,
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 103,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("assets/meCircle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Second Page
          Container(
            height: height / 1.5,
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    "assets/web.jpg",
                    height: height / 1.9,
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold(text: "About me", size: 40),
                      SizedBox(height: 10),
                      Text(
                        "Recent Information and Communication attending with a solid foundation in Java programming and mobile app development also Flutter.\n"
                        "Enthusiastic about learning new technologies and eager to contribute to team success through hard work and creativity.\n"
                        "Looking to start a career as an Android/IOS developer where I can apply my skills and grow professionally.",
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          BoxText(
                            text: "Flutter",
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          BoxText(
                            text: "Firebase",
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          BoxText(
                            text: "Android",
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          BoxText(
                            text: "IOS",
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          BoxText(
                            text: "Window",
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //Third Page
          SizedBox(
            height: height / 1.3,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold(
                  text: "What I do?",
                  size: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWidget(
                      imagePath: "assets/webL.png",
                      text: "Web Development",
                    ),
                    AnimatedCardWidget(
                      imagePath: "assets/app.png",
                      text: "App Development",
                      reverse: true,
                      fit: BoxFit.contain,
                    ),
                    AnimatedCardWidget(
                      imagePath: "assets/firebase.png",
                      text: "Back-end Development",
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Forth Page
          SizedBox(
            height: height,
            child: FormWeb(),
          ),
        ],
      ),
    );
  }
}
