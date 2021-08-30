import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registraction_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(seconds: 1),vsync: this);
    animation = ColorTween(begin: Colors.yellowAccent,end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {

      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image(
                      image: AssetImage('images/logo.png'),
                    ),
                    height: 60.0,
                  ),
                ),
                Text(
                  'Flash Chat',
                  style:
                  TextStyle(fontSize: 45.0, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            RoundedButton(
              color: Colors.lightBlue,
              buttonTitle: 'Log In',
              onpressed: (){Navigator.pushNamed(context, LoginScreen.id);},
            ),
            RoundedButton(
              color: Colors.lightBlue,
              buttonTitle: 'Register',
              onpressed: (){Navigator.pushNamed(context, RegistractionScreen.id);},
            ),
          ],
        ),
      ),
    );
  }
}