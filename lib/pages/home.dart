import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../utils/constants.dart';
import '../utils/helper.dart';
import '../widgets/app_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Positioned(
                      top: 100.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 150.0,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 24.0,
                  ),
                  decoration: BoxDecoration(
                      color: Constants.scaffoldBackGndColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0,),
                      Text(
                        "Welcome to the Hospital Inventory",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(19, 22, 33, 1),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text("PLease sign in below",
                        style: TextStyle(
                          color: Color.fromRGBO(74, 77, 84, 1),
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      AppButton(ButtonType.PRIMARY, () {
                        nextScreen(context, "/login");
                      }, "Log In"),
                      SizedBox(height: 15.0,),
                      AppButton(ButtonType.PLAIN, () { }, "Create an Account")
                    ],
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}