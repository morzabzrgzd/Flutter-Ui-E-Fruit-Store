import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/authentication_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: size.height * 0.06),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              color: kPrimeryColor,
              height: size.height / 2,
              child: Image.asset(
                'assets/images/basket.png',
                width: size.width * 0.8,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: size.width * 0.08,
                left: size.width * 0.08,
                top: size.width * 0.18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get The Freshest Fruit Salad Combo',
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: size.width * 0.05,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.w300,
                        fontSize: size.width * 0.043,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AuthenticationScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: size.height * 0.05),
                      alignment: Alignment.center,
                      height: size.height * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kPrimeryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Let’s Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.045,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
