import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oop_proj/utils/helper.dart';
import 'package:oop_proj/widgets/app_button.dart';

import '../utils/constants.dart';

class Add_Stock extends StatelessWidget {

  @override
  final controllerCategory = TextEditingController();
  final controllerQuantity = TextEditingController();
  final controllerExpiryDate = TextEditingController();
  final controllerStockID = TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
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
                          "Add Stock",
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
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
                          controller: controllerStockID,
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
                          controller: controllerCategory,
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
                          controller: controllerQuantity,
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
                          controller: controllerExpiryDate,
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
                        Container(child: AppButton(ButtonType.PRIMARY,() {
                          //write the add code here


                          final category = MedCat(
                            Category: controllerCategory.text,
                            Quantity: int.parse(controllerQuantity.text),
                            Expiry_Date: DateTime.parse(
                                controllerExpiryDate.text),
                            Stock_ID: controllerStockID.text,
                          );


                          createMedicine(category);
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

  // meds for docuser , createrMedicine for createUser, category for user , b for json
  Future createMedicine(MedCat user) async {
    final meds = FirebaseFirestore.instance.collection('medicines').doc(controllerStockID.text);

    final json = user.toJson();
    await meds.set(json);


  }
}
class MedCat {
  String Stock_ID;
  final String Category;
  final int Quantity;
  final DateTime Expiry_Date;


  MedCat({
    required this.Stock_ID,
    required this.Category,
    required this.Quantity,
    required this.Expiry_Date,
  });

  Map <String, dynamic> toJson() =>{
    'Stock_ID': Stock_ID,
    'Category' : Category,
    'Quantity': Quantity,
    'Expirty_Date': Expiry_Date,};
}