import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    handleSpladh();
  }

  handleSpladh() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const WelcomeScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Center(
            child: SvgPicture.asset(
          'assets/images/SplashIcon.svg',
          width: size.width * 0.6,
        )),
      ),
    );
  }
}
