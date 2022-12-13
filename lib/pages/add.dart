import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oop_proj/utils/helper.dart';
import 'package:oop_proj/widgets/app_button.dart';

import '../utils/constants.dart';

class Add_Stock extends StatelessWidget {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: ListView(
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
                          "Add Stock",
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
                    child: ListView(
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
                          // final category = controller.text;
                          //
                          // createMedicine(category: category);
                        }, "Add"),
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
  // Future createMedicine({required String category}) async{
  //   final meds=FirebaseFirestore.instance.collection('medicines').doc('ID');
  //
  //   final b ={
  //     'category': category,
  //     'Quantity': 5,
  //     'Expiry Date': DateTime(2023,1,31),
  //   };
  //
  //   await meds.set(b);
  // }
}