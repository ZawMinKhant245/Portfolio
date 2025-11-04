import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
  const TextFormFieldWidget(
      {required this.heading,
      required this.hintText,
      this.maxLine,
      this.width,
      super.key});

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
            cursorColor: Colors.tealAccent,
            cursorWidth: 2.0,
            cursorHeight: 20,
            maxLines: maxLine,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(fontSize: 14),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(10)),
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
