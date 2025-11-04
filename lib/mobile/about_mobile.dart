import 'package:flutter/material.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35, color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
                child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2)),
              child: Image.asset("assets/meCircle.png"),
            )),
            TabMobile(
              title: 'Home',
              route: '/',
            ),
            SizedBox(
              height: 20,
            ),
            TabMobile(
              title: 'Education',
              route: '/education',
            ),
            SizedBox(
              height: 20,
            ),
            TabMobile(
              title: 'About',
              route: '/about',
            ),
            SizedBox(
              height: 20,
            ),
            const TabMobile(
              title: 'Contact',
              route: '/contact',
            ),
            SizedBox(
              height: 40,
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            //Introduction first section
            CircleAvatar(
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SansBold(
                    text: "About me",
                    size: 25,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Recent Information and Communication attending with a solid foundation in Java programming and mobile app development also Flutter.\n"
                    "Enthusiastic about learning new technologies and eager to contribute to team success through hard work and creativity.\n"
                    "Looking to start a career as an Android/IOS developer where I can apply my skills and grow professionally.",
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    style: TextStyle(fontSize: 15, height: 1.5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BoxText(
                        text: "Flutter",
                        size: 15,
                      ),
                      BoxText(
                        text: "Firebase",
                        size: 15,
                      ),
                      BoxText(
                        text: "Android",
                        size: 15,
                      ),
                      BoxText(
                        text: "IOS",
                        size: 15,
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
            SizedBox(
              height: 40,
            ),

            //Second Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCardWidget(
                  imagePath: 'assets/web.jpg',
                ),
                SizedBox(
                  height: 20,
                ),
                SansBold(
                  text: "Web Development",
                  size: 20,
                ),
                Sans(
                  text:
                      "I'm here to build your presence online with state of the art of web app",
                  size: 15,
                ),
                SizedBox(
                  height: 30,
                ),
                AnimatedCardWidget(
                  imagePath: 'assets/app.png',
                  reverse: true,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 20,
                ),
                SansBold(
                  text: "App Development",
                  size: 20,
                ),
                const Sans(
                  text:
                      "Do you need high-performance,responsive and beautiful app?Don't worry,I've got your convered",
                  size: 15,
                ),
                SizedBox(
                  height: 30,
                ),
                AnimatedCardWidget(
                  imagePath: 'assets/firebase.png',
                  reverse: true,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 20,
                ),
                SansBold(
                  text: "Back-end Development",
                  size: 20,
                ),
                const Sans(
                  text:
                      "Do you want your back-end to be highly scalable and secure? let's have a conversation on how I can help you",
                  size: 15,
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
