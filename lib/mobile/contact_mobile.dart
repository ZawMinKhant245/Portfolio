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
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      endDrawer: DrawerMobile(),
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
            child: FormMobile(),
          )),
    );
  }
}
