import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



import '../utils/constants.dart';

// enum ButtonType { PRIMARY, PLAIN }

class Exp_Widget extends StatelessWidget {
  // final ButtonType type;
  // final VoidCallback onPressed;
  final String category;
  final int quantity;
  // final DateTime exp_date;
  final String tempDate;


  Exp_Widget(this.category,this.quantity,this.tempDate);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
            width: 140.0,
            // height: 100.0,
            decoration: BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.circular(9.0),
                boxShadow: const [BoxShadow(
                    color: Color.fromRGBO(169, 176, 185, 0.42),
                    spreadRadius: 0,
                    blurRadius: 8.0,
                    offset: Offset(0,2)
                )
                ]
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 15.0,),
                  Text(
                    this.category,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(this.quantity.toString(),
                    style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,),),
                  SizedBox(height: 10.0,),
                  Text(this.tempDate,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,),)
                ]
              ),
            )
        )
    );
  }
}

// Color getButtonColor(ButtonType type) {
//   switch(type) {
//     case ButtonType.PRIMARY:
//       return Constants.primaryColor;
//     case ButtonType.PLAIN:
//       return Colors.white;
//     default :
//       return Constants.primaryColor;
//   }
// }
//
// Color getTextColor(ButtonType type) {
//   switch(type) {
//     case ButtonType.PLAIN:
//       return Constants.primaryColor;
//     case ButtonType.PRIMARY:
//       return Colors.white;
//     default :
//       return Colors.white;
//   }
// }