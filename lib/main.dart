import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foom/screens/home_screen.dart';
import 'package:foom/screens/introduction_auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationPage(),
    );
  }
}

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((event) {
      if(event != null) {
        setState(() {
          isLoggedIn = true;
        });
      } else {
        setState(() {
          isLoggedIn = false;
        });
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoggedIn == false? IntroductionAuthScreen(): HomeScreen(),
    );
  }
}
