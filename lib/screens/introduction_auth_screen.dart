import "package:flutter/material.dart";
import 'package:introduction_screen/introduction_screen.dart';

import '../universal_variables.dart';
import 'navigate_auth_screen.dart';

class IntroductionAuthScreen extends StatefulWidget {
  @override
  _IntroductionAuthScreenState createState() => _IntroductionAuthScreenState();
}

class _IntroductionAuthScreenState extends State<IntroductionAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome",
          body: "Welcome to Zoom Clone",
          decoration: PageDecoration(
            bodyTextStyle: montserratStyle(20, Colors.black),
            titleTextStyle: montserratStyle(20, Colors.black),
          ),
          image: Center(
              child: Image.asset('images/welcome.jpeg', height: 175),
          ),
        ),
        PageViewModel(
          title: "Create & Join Meetings",
          body:
              "Create Meeting codes and join meeting with codes with just a single click",
          decoration: PageDecoration(
            bodyTextStyle: montserratStyle(20, Colors.black),
            titleTextStyle: montserratStyle(20, Colors.black),
          ),
          image: Center(
              child: Image.asset('images/conference.jpeg', height: 175),
          ),
        ),
        PageViewModel(
          title: "Privacy",
          body: "We Respect your Privacy",
          decoration: PageDecoration(
            bodyTextStyle: montserratStyle(20, Colors.black),
            titleTextStyle: montserratStyle(20, Colors.black),
          ),
          image: Center(
              child: Image.asset('images/secure.jpeg', height: 175),
          ),
        ),
      ],
      onDone: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => NavigateAuthScreen()));
      },
      onSkip: () {},
      showSkipButton: true,
      skip: const Icon(
        Icons.skip_next,
        size: 45,
      ),
      next: const Icon(Icons.arrow_forward),
      done: Text(
        "DONE",
        style: montserratStyle(20, Colors.black),
      ),
    );
  }
}
