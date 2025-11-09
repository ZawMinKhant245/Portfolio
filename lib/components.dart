import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

var logger = Logger();
final TextEditingController _firstNameController = TextEditingController();
final TextEditingController _lastNameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _phoneNumberController = TextEditingController();
final TextEditingController _messageController = TextEditingController();

class TabMobile extends StatefulWidget {
  final title;
  final route;
  const TabMobile({super.key, this.title, this.route});

  @override
  State<TabMobile> createState() => _TabMobileState();
}

class _TabMobileState extends State<TabMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      minWidth: 200,
      height: 50,
      color: Colors.black,
      child: Text(
        widget.title,
        style: GoogleFonts.openSans(fontSize: 20, color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}

class TabWeb extends StatefulWidget {
  final title;
  final route;
  const TabWeb({required this.title, this.route, super.key});

  @override
  State<TabWeb> createState() => _TabWebState();
}

class _TabWebState extends State<TabWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
          print("Entered");
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
          print("Exist");
        },
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 200),
          curve: Curves.linear,
          style: isSelected
              ? GoogleFonts.roboto(
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -8))],
                  fontSize: 20,
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.tealAccent,
                )
              : GoogleFonts.roboto(color: Colors.black, fontSize: 20),
          child: Text(
            widget.title,
            // style: GoogleFonts.oswald(color: Colors.black, fontSize: 23),
          ),
        ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold({this.text, this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans({this.text, this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

class BoxText extends StatelessWidget {
  final text;
  final size;
  const BoxText({this.text, this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Sans(
        text: text,
        size: size,
      ),
      decoration: BoxDecoration(
          border: Border.all(
              style: BorderStyle.solid, color: Colors.tealAccent, width: 2),
          borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.all(5),
    );
  }
}

class CardTag extends StatelessWidget {
  final String imagePath;
  final text;
  final height;
  final width;
  const CardTag(
      {required this.imagePath, this.text, super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 30,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.tealAccent)),
      shadowColor: Colors.tealAccent,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: width,
              height: height,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 10,
            ),
            text ??
                SansBold(
                  text: text,
                  size: 15,
                ),
          ],
        ),
      ),
    );
  }
}

class TextFormFieldWidget extends StatelessWidget {
  final hintText;
  final heading;
  final maxLine;
  final width;
  final controller;
  final validator;
  const TextFormFieldWidget(
      {required this.heading,
      required this.hintText,
      this.maxLine,
      this.width,
      super.key,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(
          text: heading,
          size: 15,
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: width ?? 350,
          child: TextFormField(
            validator: validator,
            controller: controller,
            cursorColor: Colors.tealAccent,
            cursorWidth: 2.0,
            cursorHeight: 20,
            maxLines: maxLine,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(fontSize: 14),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
      ],
    );
  }
}

class AnimatedCardWidget extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final width;
  final height;
  const AnimatedCardWidget({
    super.key,
    required this.imagePath,
    this.text,
    this.fit,
    this.reverse,
    this.width,
    this.height,
  });

  @override
  State<AnimatedCardWidget> createState() => _AnimatedCardWidgetState();
}

class _AnimatedCardWidgetState extends State<AnimatedCardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..repeat(reverse: true);

    _animation = Tween(
      begin:
          widget.reverse == true ? const Offset(0, 0.08) : const Offset(0, 0),
      end: widget.reverse == true ? Offset.zero : const Offset(0, 0.08),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: CardTag(
        imagePath: widget.imagePath,
        text: widget.text != null ? Text(widget.text!) : const SizedBox(),
        width: widget.width ?? 200,
        height: widget.height ?? 200,
      ),
    );
  }
}

class UrlLauncher {
  urlanucher(String imagePath, String url, double width) {
    return IconButton(
      icon: Image.asset(
        imagePath,
        width: width,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }
}

class AbelCustom extends StatelessWidget {
  final text;
  final fontWeight;
  final colors;
  final size;
  const AbelCustom(
      {super.key,
      required this.text,
      this.fontWeight,
      this.colors,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
          fontSize: size,
          color: colors == null ? Colors.black : colors,
          fontWeight: fontWeight == null ? FontWeight.normal : fontWeight),
    );
  }
}

class Project extends StatefulWidget {
  final imagePath;
  final projectName;
  final description;
  final width;
  final height;
  const Project({
    super.key,
    required this.imagePath,
    required this.projectName,
    required this.description,
    this.width,
    this.height,
  });

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedCardWidget(
          imagePath: widget.imagePath,
          width: widget.width == null ? 80 : widget.width,
          height: widget.height == null ? 100 : widget.height,
          fit: BoxFit.contain,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                    style: BorderStyle.solid, width: 1, color: Colors.black)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(3)),
                      child: AbelCustom(
                        text: widget.projectName,
                        size: 25,
                        colors: Colors.white,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            expand = !expand;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          color: Colors.black,
                        ))
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  widget.description,
                  style: GoogleFonts.openSans(fontSize: 15),
                  maxLines: expand == true ? null : 3,
                  overflow: expand == true
                      ? TextOverflow.visible
                      : TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AddDataToFirebase {
  final logger = Logger();

  final CollectionReference _messages =
      FirebaseFirestore.instance.collection("messages");

  Future addResponse(
    String firstName,
    String lastName,
    String email,
    String phone,
    String message,
  ) async {
    try {
      await _messages.add({
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'phone': phone,
        'message': message,
      });
      logger.d('Success');
      return true;
    } catch (e) {
      logger.d(e);
      return false;
    }
  }
}

Future DialogError(BuildContext context, String message) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            title: Center(
              child: SansBold(
                text: message,
                size: 20,
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ));
}

class TabWebList extends StatefulWidget {
  const TabWebList({super.key});

  @override
  State<TabWebList> createState() => _TabWebListState();
}

class _TabWebListState extends State<TabWebList> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class DrawerWeb extends StatelessWidget {
  const DrawerWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              UrlLauncher().urlanucher(
                  "assets/github.png", "https://github.com/ZawMinKhant245", 30),
              UrlLauncher().urlanucher("assets/instagram.png",
                  "https://www.instagram.com/khant.zzzz/", 26),
            ],
          ),
        ],
      ),
    );
  }
}

class DrawerMobile extends StatefulWidget {
  const DrawerMobile({super.key});

  @override
  State<DrawerMobile> createState() => _DrawerMobileState();
}

class _DrawerMobileState extends State<DrawerMobile> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              UrlLauncher().urlanucher(
                  "assets/github.png", "https://github.com/ZawMinKhant245", 30),
              UrlLauncher().urlanucher("assets/instagram.png",
                  "https://www.instagram.com/khant.zzzz/", 26),
            ],
          ),
        ],
      ),
    );
  }
}

class FormWeb extends StatefulWidget {
  const FormWeb({super.key});

  @override
  State<FormWeb> createState() => _FormWebState();
}

class _FormWebState extends State<FormWeb> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SansBold(
            text: "Contact Me",
            size: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  TextFormFieldWidget(
                    heading: 'First name',
                    hintText: 'Please type first name',
                    controller: _firstNameController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "first name required";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormFieldWidget(
                      validator: (text) {
                        if (text.toString().isEmpty) {
                          return "email  required";
                        }
                      },
                      controller: _emailController,
                      heading: 'Email',
                      hintText: 'Please type email')
                ],
              ),
              Column(
                children: [
                  TextFormFieldWidget(
                      validator: (text) {
                        if (text.toString().isEmpty) {
                          return "last name required";
                        }
                      },
                      controller: _lastNameController,
                      heading: 'Last name',
                      hintText: 'Please type last name'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormFieldWidget(
                      controller: _phoneNumberController,
                      validator: (text) {
                        if (text.toString().isEmpty) {
                          return "phone number required";
                        }
                      },
                      heading: 'Phone number',
                      hintText: 'Please type phone number')
                ],
              )
            ],
          ),
          TextFormFieldWidget(
            controller: _messageController,
            heading: 'Message',
            hintText: "Please type your message to me",
            width: width / 1.2,
            maxLine: 6,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              logger.d(_firstNameController.text);
              if (formKey.currentState!.validate()) {
                if (await AddDataToFirebase().addResponse(
                  _firstNameController.text.trim(),
                  _lastNameController.text.trim(),
                  _emailController.text.trim(),
                  _phoneNumberController.text.trim(),
                  _messageController.text.trim(),
                )) {
                  _firstNameController.clear();
                  _lastNameController.clear();
                  _emailController.clear();
                  _phoneNumberController.clear();
                  _messageController.clear();
                  DialogError(context, "Message sent successfully");
                }
                DialogError(context, "Message failed to sent");
              }
              // formKey.currentState!.reset();
            },
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
    );
  }
}

class FormMobile extends StatefulWidget {
  const FormMobile({super.key});

  @override
  State<FormMobile> createState() => _FormMobileState();
}

class _FormMobileState extends State<FormMobile> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
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
            heading: 'First name',
            hintText: 'Please type first name',
            controller: _firstNameController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return "first name required";
              }
            },
          ),
          TextFormFieldWidget(
              validator: (text) {
                if (text.toString().isEmpty) {
                  return "last name required";
                }
              },
              controller: _lastNameController,
              heading: 'Last name',
              hintText: 'Please type last name'),
          TextFormFieldWidget(
              validator: (text) {
                if (text.toString().isEmpty) {
                  return "email  required";
                }
              },
              controller: _emailController,
              heading: 'Email',
              hintText: 'Please type email'),
          TextFormFieldWidget(
              controller: _phoneNumberController,
              validator: (text) {
                if (text.toString().isEmpty) {
                  return "phone number required";
                }
              },
              heading: 'Phone number',
              hintText: 'Please type phone number'),
          TextFormFieldWidget(
            controller: _messageController,
            heading: 'Message',
            hintText: "Please type your message to me",
            width: widthDevice / 1.4,
            maxLine: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                await AddDataToFirebase().addResponse(
                  _firstNameController.text.trim(),
                  _lastNameController.text.trim(),
                  _emailController.text.trim(),
                  _phoneNumberController.text.trim(),
                  _messageController.text.trim(),
                );
                _firstNameController.clear();
                _lastNameController.clear();
                _emailController.clear();
                _phoneNumberController.clear();
                _messageController.clear();
                DialogError(context, "Message Submitted");
              }
              // formKey.currentState!.reset();
            },
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
    );
  }
}
