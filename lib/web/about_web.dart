import 'package:flutter/material.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/meCircle.png"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SansBold(
              text: "Zaw Min Khant",
              size: 32,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UrlLauncher().urlanucher("assets/facebook.png",
                    "https://web.facebook.com/zaw.min.khant.390017/", 30),
                UrlLauncher().urlanucher("assets/github.png",
                    "https://github.com/ZawMinKhant245", 30),
                UrlLauncher().urlanucher("assets/instagram.png",
                    "https://www.instagram.com/khant.zzzz/", 26),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        // iconTheme: IconThemeData(size: 25, color: Colors.black),
        title: const Row(
          children: [
            Spacer(
              flex: 5,
            ),
            TabWeb(
              title: "Home",
              route: '/',
            ),
            Spacer(),
            TabWeb(
              title: "Project",
              route: '/project',
            ),
            Spacer(),
            TabWeb(
              title: "About",
              route: "/about",
            ),
            Spacer(),
            TabWeb(
              title: "Contact",
              route: '/contact',
            ),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //first section
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
              height: height / 1.5,
              padding: EdgeInsets.only(right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                  Expanded(
                    child: CircleAvatar(
                      radius: 117,
                      backgroundColor: Colors.tealAccent,
                      child: CircleAvatar(
                        radius: 113,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 110,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            "assets/meCircle.png",
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Second Section Web
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWidget(
                imagePath: 'assets/web.jpg',
                height: 250,
                width: 250,
              ),
              SizedBox(
                width: width / 3,
                child: Column(
                  children: [
                    SansBold(
                      text: "Web Development",
                      size: 30,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                      text:
                          "I'm here to build your presence online with state of the art of web app",
                      size: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

          //Third Section app
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width / 3,
                child: Column(
                  children: [
                    SansBold(
                      text: "App Development",
                      size: 30,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                      text:
                          "Do you need high-performance,responsive and beautiful app?Don't worry,I've got your convered",
                      size: 15,
                    ),
                  ],
                ),
              ),
              AnimatedCardWidget(
                imagePath: 'assets/app.png',
                height: 250,
                width: 250,
                reverse: true,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),

          //Forth Section Backend
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWidget(
                imagePath: 'assets/firebase.png',
                height: 250,
                width: 250,
              ),
              SizedBox(
                width: width / 3,
                child: Column(
                  children: [
                    SansBold(
                      text: "Back-end Development",
                      size: 30,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                      text:
                          "Do you want your back-end to be highly scalable and secure? let's have a conversation on how I can help you",
                      size: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
