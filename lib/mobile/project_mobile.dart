import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class EducationMobile extends StatefulWidget {
  const EducationMobile({super.key});

  @override
  State<EducationMobile> createState() => _EducationMobileState();
}

class _EducationMobileState extends State<EducationMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.white,
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
                    title: 'Project',
                    route: '/project',
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
            body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      expandedHeight: 200,
                      backgroundColor: Colors.white,
                      iconTheme: IconThemeData(size: 35, color: Colors.black),
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: Container(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: AbelCustom(
                            text: 'My Project',
                            size: 24,
                            colors: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        background: Image.asset(
                          'assets/project.jpg',
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ];
                },
                body: ListView(
                  children: const [
                    Project(
                      imagePath: 'assets/portfolio.png',
                      width: 200,
                      projectName: "Portfolio",
                      description:
                          "MyPortfolio is a personal portfolio platform developed using Flutter for both web and mobile. "
                          "It serves as a digital résumé and showcase of the developer’s work, allowing visitors to explore skills, projects, experience, and contact information seamlessly across devices."
                          " The app and website feature a clean, responsive design with smooth animations and professional visuals that adapt perfectly to any screen size.",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Project(
                      imagePath: 'assets/chatapp.jpg',
                      height: 150,
                      projectName: "Chat App",
                      description:
                          "This project is a real-time chat application developed using Flutter for the frontend and Firebase for the backend."
                          " The app allows users to send and receive instant messages through a clean and responsive chat interface. "
                          "Using Firebase Authentication, users can securely sign up, log in, and manage their accounts."
                          "The Firebase Cloud Firestore database stores all messages in real time, ensuring instant synchronization across devices.",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Project(
                      imagePath: 'assets/flime1.jpg',
                      projectName: "FlimFick App",
                      height: 150,
                      description:
                          "Flime Flick is a movie streaming application inspired by Netflix, developed using Java in Android Studio. "
                          "The app fetches real-time movie data from an external Movie API (such as TMDb API) to display trending, "
                          "popular, and upcoming movies. Users can explore movies by genre, view details such as synopsis, release date,"
                          " cast, and ratings, and watch trailers directly within the app.",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Project(
                      height: 150,
                      imagePath: 'assets/ridee.jpg',
                      projectName: "Ridee App",
                      description:
                          "Ridee is a ride-hailing mobile application inspired by platforms like Bolt and Grab, developed using Flutter."
                          " The app integrates the Google Maps API to provide real-time location tracking, route navigation, and distance estimation between drivers and passengers."
                          " Users can easily request a ride, view nearby drivers, track ride progress, and estimate fares instantly within the app.",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Project(
                      height: 150,
                      imagePath: 'assets/contactapp.jpg',
                      projectName: "Contact App",
                      description:
                          "The Contact App is a mobile application designed to function like a default phone contact manager, developed using Flutter."
                          " It allows users to store, view, edit and delete contacts in an intuitive interface. The app provides a clean and responsive design, "
                          "making it easy for users to manage their personal and professional contact lists efficiently.",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Project(
                      height: 150,
                      imagePath: 'assets/datecounter.jpg',
                      projectName: "DateCounter App",
                      description:
                          "Date Counter is a romantic day-tracking app inspired by Been Together, developed using Flutter."
                          " The app lets couples record their special date (such as their anniversary or the day they first met) and automatically counts the number of days they’ve been together. "
                          "It features a cute and modern interface displaying the total days, months, and years of the relationship, with customizable themes and background images.",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Project(
                      height: 150,
                      imagePath: 'assets/expense.jpg',
                      projectName: "Expense Tracker App",
                      description:
                          "The Expense Tracker App is a personal finance management application developed using Flutter."
                          " It helps users record, monitor, and analyze their daily income and expenses. "
                          "The app provides a simple and intuitive interface for tracking spending habits, managing budgets, and visualizing financial data through charts and summaries.",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Project(
                      height: 150,
                      imagePath: 'assets/mynote.jpg',
                      projectName: "MyNote App",
                      description:
                          "QuickNote is a simple and efficient note-taking application developed using Flutter. The app allows users to create, edit, and delete notes with an easy-to-use interface."
                          " It helps users organize their thoughts, daily tasks, and important reminders all in one place.",
                    ),
                    Project(
                      height: 150,
                      imagePath: 'assets/expense.jpg',
                      projectName: "Expense Tracker App",
                      description:
                          "The Expense Tracker App is a personal finance management application developed using Flutter."
                          " It helps users record, monitor, and analyze their daily income and expenses. "
                          "The app provides a simple and intuitive interface for tracking spending habits, managing budgets, and visualizing financial data through charts and summaries.",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ))));
  }
}
