import 'dart:ui';

import 'package:flutter/material.dart';

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
                            text: 'My Education',
                            size: 24,
                            colors: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        background: Image.asset(
                          'assets/education.jpg',
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ];
                },
                body: ListView())));
  }
}
