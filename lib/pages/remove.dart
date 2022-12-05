import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oop_proj/utils/helper.dart';
import 'package:oop_proj/widgets/app_button.dart';

import '../utils/constants.dart';

class Remove_Stock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Remove Stock",
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
                  Expanded(child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 30.0,),
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
                          height: 100.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Enter Stock ID",
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                color: Constants.primaryColor,
                                fontWeight: FontWeight.w600,
                              )
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Category",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(
                              color: Constants.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Quantity",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(
                              color: Constants.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Expiry Date",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(
                              color: Constants.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(child: AppButton(ButtonType.PRIMARY, () {
                          //write the add code here
                        }, "Remove"),
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ],
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