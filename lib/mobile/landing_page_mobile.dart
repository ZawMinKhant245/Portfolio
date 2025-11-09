import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  var logger = Logger();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35, color: Colors.black),
      ),
      body: ListView(
        children: [
          const CircleAvatar(
            radius: 117,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 110,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/meCircle.png'),
            ),
          ),
          //Intro
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Column(
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
                    SansBold(
                      text: "Zaw Min Khant",
                      size: 40,
                    ),
                    Sans(
                      text: "Flutter Developer",
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 3,
                          children: [
                            Icon(Icons.email),
                            Icon(Icons.phone),
                            Icon(Icons.location_on),
                          ],
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 9,
                          children: [
                            Sans(
                              text: "mzaw17591@gmail.com",
                              size: 15,
                            ),
                            Sans(
                              text: "06-269-011-50",
                              size: 15,
                            ),
                            Sans(
                              text: "อกเจริญ Lak Hok, Mueang Pathum Thani",
                              size: 15,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          //SecondPage
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
                  height: 10,
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
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SansBold(
                text: "What I do?",
                size: 25,
              ),
              const SizedBox(
                height: 10,
              ),
              const AnimatedCardWidget(
                imagePath: "assets/webL.png",
                text: "Web Development",
                width: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const AnimatedCardWidget(
                imagePath: "assets/app.png",
                text: "App Development",
                reverse: true,
                fit: BoxFit.contain,
                width: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const AnimatedCardWidget(
                imagePath: "assets/firebase.png",
                text: "Back-end Development",
                width: 300,
              ),
              const SizedBox(
                height: 35,
              ),
              const SansBold(
                text: "Contact me",
                size: 25,
              ),
              FormMobile(),
            ],
          ),
        ],
      ),
      endDrawer: DrawerMobile(),
    );
  }
}
