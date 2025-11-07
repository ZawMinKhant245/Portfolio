import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
                    'assets/contact.jpg',
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SansBold(
                  text: "Contact me",
                  size: 40,
                ),
                SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextFormFieldWidget(
                            heading: 'First name',
                            hintText: 'Please type first name'),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormFieldWidget(
                            heading: 'Email', hintText: 'Please type email')
                      ],
                    ),
                    Column(
                      children: [
                        TextFormFieldWidget(
                            heading: 'Last name',
                            hintText: 'Please type last name'),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormFieldWidget(
                            heading: 'Phone number',
                            hintText: 'Please type phone number')
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormFieldWidget(
                  heading: 'Message',
                  hintText: "Please type your message to me",
                  width: widthDevice / 1.2,
                  maxLine: 6,
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SansBold(
                      text: 'Submit',
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
