import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerWeb(),
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
                title: TabWebList(),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: FormWeb(),
          )),
    );
  }
}
