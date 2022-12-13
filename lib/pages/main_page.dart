import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oop_proj/utils/helper.dart';
import 'package:oop_proj/widgets/app_button.dart';
import 'package:oop_proj/widgets/expiry_widget.dart';

import '../utils/constants.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Stack(
            children: [
              ListView(

                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 14.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.keyboard_backspace,
                            color: Colors.white,),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Select what you want to do",
                          style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 40.0,),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      color: Colors.white,

                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120.0,
                        ),
                        AppButton(ButtonType.PRIMARY,() {
                          nextScreen(context, "/add");
                        }, "Add Stock"),
                        SizedBox(
                          height: 35.0,
                        ),
                        AppButton(ButtonType.PRIMARY,() {
                          nextScreen(context, "/remove");
                        }, "Remove Stock"),
                        SizedBox(
                          height: 35.0,
                        ),
                        AppButton(ButtonType.PRIMARY,() {
                          nextScreen(context, "/avail");
                        }, "Check Medicine Availibilty"),
                      ],
                    ),
                  ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    child: Column(
                      children: [
                      Text("Expiring Stock",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                        ),
                      ),
                        SizedBox(
                      height: 40.0,
                    ),
                    // AppButton(ButtonType.PRIMARY,() {}, "Add Stock")
                        Container(
                          height: 110.0,
                          width: double.infinity,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                SizedBox(width: 10.0,),
                                Exp_Widget("category1", 32, "date1"),
                            SizedBox(width: 10.0,),
                            Exp_Widget("category2", 33, "date2"),
                                SizedBox(width: 10.0,),
                            Exp_Widget("category3", 34, "date3"),
                                SizedBox(width: 10.0,),
                                Exp_Widget("category4", 35, "date4"),
                                SizedBox(width: 10.0,),
                                Exp_Widget("category5", 36, "date5"),
                          ]
                        ),
                        ),
                    ]
                    ),
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}