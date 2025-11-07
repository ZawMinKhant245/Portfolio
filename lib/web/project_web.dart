import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class EducationWeb extends StatefulWidget {
  const EducationWeb({super.key});

  @override
  State<EducationWeb> createState() => _EducationWebState();
}

class _EducationWebState extends State<EducationWeb> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
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
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/meCircle.png"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SansBold(
              text: "Zaw Min Khant",
              size: 30,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrlLauncher().urlanucher("assets/facebook.png",
                    "https://web.facebook.com/zaw.min.khant.390017/", 30),
                UrlLauncher().urlanucher("assets/github.png",
                    "https://github.com/ZawMinKhant245", 30),
                UrlLauncher().urlanucher("assets/instagram.png",
                    "https://www.instagram.com/khant.zzzz/", 26),
              ],
            )
          ],
        ),
      ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 25,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/project.jpg',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
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
            ];
          },
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCardWidget(
                        imagePath: 'assets/portfolio.png',
                        height: 200,
                        width: 300,
                      ),
                      SizedBox(
                        width: width / 3,
                        child: Column(
                          children: [
                            SansBold(
                              text: "Portfolio App",
                              size: 20,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Sans(
                              text:
                                  "MyPortfolio is a personal portfolio platform developed using Flutter for both web and mobile. "
                                  "It serves as a digital résumé and showcase of the developer’s work, allowing visitors to explore skills, projects, experience, and contact information seamlessly across devices."
                                  " The app and website feature a clean, responsive design with smooth animations and professional visuals that adapt perfectly to any screen size.",
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width / 3,
                        child: Column(
                          children: [
                            SansBold(
                              text: "Chat App",
                              size: 20,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Sans(
                              text:
                                  "This project is a real-time chat application developed using Flutter for the frontend and Firebase for the backend."
                                  " The app allows users to send and receive instant messages through a clean and responsive chat interface. "
                                  "Using Firebase Authentication, users can securely sign up, log in, and manage their accounts."
                                  "The Firebase Cloud Firestore database stores all messages in real time, ensuring instant synchronization across devices.",
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      AnimatedCardWidget(
                        imagePath: 'assets/chatapp.jpg',
                        height: 200,
                        width: 300,
                        reverse: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCardWidget(
                        imagePath: 'assets/flime1.jpg',
                        height: 200,
                        width: 300,
                      ),
                      SizedBox(
                        width: width / 3,
                        child: Column(
                          children: [
                            SansBold(
                              text: "FlimFick App",
                              size: 20,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Sans(
                              text:
                                  "Flim Flick is a movie streaming application inspired by Netflix, developed using Java in Android Studio. "
                                  "The app fetches real-time movie data from an external Movie API (such as TMDb API) to display trending, "
                                  "popular, and upcoming movies. Users can explore movies by genre, view details such as synopsis, release date,"
                                  " cast, and ratings, and watch trailers directly within the app.",
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width / 3,
                        child: Column(
                          children: [
                            SansBold(
                              text: "Ridee App",
                              size: 20,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Sans(
                              text:
                                  "Ridee is a ride-hailing mobile application inspired by platforms like Bolt and Grab, developed using Flutter."
                                  " The app integrates the Google Maps API to provide real-time location tracking, route navigation, and distance estimation between drivers and passengers."
                                  " Users can easily request a ride, view nearby drivers, track ride progress, and estimate fares instantly within the app.",
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      AnimatedCardWidget(
                        imagePath: 'assets/ridee.jpg',
                        height: 200,
                        width: 300,
                        reverse: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCardWidget(
                        imagePath: 'assets/contactapp.jpg',
                        height: 200,
                        width: 300,
                      ),
                      SizedBox(
                        width: width / 3,
                        child: Column(
                          children: [
                            SansBold(
                              text: "Contact App",
                              size: 20,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Sans(
                              text:
                                  "The Contact App is a mobile application designed to function like a default phone contact manager, developed using Flutter."
                                  " It allows users to store, view, edit and delete contacts in an intuitive interface. The app provides a clean and responsive design, "
                                  "making it easy for users to manage their personal and professional contact lists efficiently.",
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width / 3,
                        child: Column(
                          children: [
                            SansBold(
                              text: "Date Counter App",
                              size: 20,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Sans(
                              text:
                                  "Date Counter is a romantic day-tracking app inspired by Been Together, developed using Flutter."
                                  " The app lets couples record their special date (such as their anniversary or the day they first met) and automatically counts the number of days they’ve been together. "
                                  "It features a cute and modern interface displaying the total days, months, and years of the relationship, with customizable themes and background images.",
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      AnimatedCardWidget(
                        imagePath: 'assets/datecounter.jpg',
                        height: 200,
                        width: 300,
                        reverse: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCardWidget(
                        imagePath: 'assets/expense.jpg',
                        height: 200,
                        width: 300,
                      ),
                      SizedBox(
                        width: width / 3,
                        child: Column(
                          children: [
                            SansBold(
                              text: "Expense App",
                              size: 20,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Sans(
                              text:
                                  "The Expense Tracker App is a personal finance management application developed using Flutter."
                                  " It helps users record, monitor, and analyze their daily income and expenses. "
                                  "The app provides a simple and intuitive interface for tracking spending habits, managing budgets, and visualizing financial data through charts and summaries.",
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width / 3,
                        child: Column(
                          children: [
                            SansBold(
                              text: "My Note App",
                              size: 20,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Sans(
                              text:
                                  "QuickNote is a simple and efficient note-taking application developed using Flutter. The app allows users to create, edit, and delete notes with an easy-to-use interface."
                                  " It helps users organize their thoughts, daily tasks, and important reminders all in one place.",
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      AnimatedCardWidget(
                        imagePath: 'assets/mynote.jpg',
                        height: 200,
                        width: 300,
                        reverse: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              )
            ],
          )),
    ));
  }
}
