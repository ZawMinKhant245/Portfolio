import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 35, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/contact.jpg',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                SansBold(
                  text: "Contact me",
                  size: 35,
                ),
                TextFormFieldWidget(
                  heading: "first name",
                  hintText: 'Please type first name',
                  width: widthDevice / 1.4,
                ),
                TextFormFieldWidget(
                  heading: "Last name",
                  hintText: 'Please type last name',
                  width: widthDevice / 1.4,
                ),
                TextFormFieldWidget(
                  heading: "Email",
                  hintText: 'Please type email',
                  width: widthDevice / 1.4,
                ),
                TextFormFieldWidget(
                  heading: "Phone number",
                  hintText: 'Please type phone number',
                  width: widthDevice / 1.4,
                ),
                TextFormFieldWidget(
                  heading: "first name",
                  hintText: 'Please type first name',
                  width: widthDevice / 1.4,
                ),
                TextFormFieldWidget(
                  heading: "Message",
                  hintText: 'Please type your message',
                  width: widthDevice / 1.4,
                  maxLine: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent,
                      minimumSize: Size(widthDevice / 1.4, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SansBold(
                      text: 'Submit',
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
