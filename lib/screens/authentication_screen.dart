import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: size.height * 0.06),
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                color: kPrimeryColor,
                height: size.height / 2,
                child: Image.asset(
                  'assets/images/basket2.png',
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
                      'What is your firstname?',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: size.width * 0.05,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      height: size.height * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffF3F1F1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        cursorColor: kPrimeryColor,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20
                          )
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
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
                          'Start Ordering',
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
      ),
    );
  }
}
