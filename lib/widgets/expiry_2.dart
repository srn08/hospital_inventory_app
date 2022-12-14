import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oop_proj/utils/helper.dart';
import 'package:oop_proj/widgets/app_button.dart';

import '../utils/constants.dart';


/*class DisplayExpiring extends StatefulWidget {
  DisplayExpiring({ required Key key}) : super(key: key);

  @override
  _DisplayExpiringState createState() => _DisplayExpiringState();
}*/

class DisplayExpiringState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expiring within 10 days: '),
      ),

      body: StreamBuilder<List<MedCat>>(
        stream: readMeds(),
     builder: (context, snapshot) {
      if(snapshot.hasError){
        return Text('Something went wrong!');
      }
      else if(snapshot.hasData){
        final medicines = snapshot.data!;
        int t= snapshot.data!.length;
        for(int i=0; i<t; i++)
        {

          if(DateTime.now().year==medicines[i].Expiry_Date.year){
            if(DateTime.now().month==medicines[i].Expiry_Date.month)
              {
                if(medicines[i].Expiry_Date.day-DateTime.now().day<=10){

                  return ListView(
                    children: medicines.map(buildMedCat).toList(),
                  );
                }
              }
                else if(medicines[i].Expiry_Date.month-DateTime.now().month==1)
                {
                  if((30+medicines[i].Expiry_Date.day)-DateTime.now().day<=10){

                    return ListView(
                      children: medicines.map(buildMedCat).toList(),
                      );
                  }
                }
             }
          }
        }
      else{
          return Center(child: CircularProgressIndicator());
          }
      throw(Exception);
        }
      ),
    );

  }
  Stream<List<MedCat>> readMeds() => FirebaseFirestore.instance.collection('medicines').snapshots().map((snapshot) => snapshot.docs.map((doc) => MedCat.fromJson(doc.data())).toList());

  Widget buildMedCat(MedCat medicines) => ListTile(
    leading: CircleAvatar(child: Text('${medicines.Quantity}')),
    title: Text(medicines.Category),
    subtitle: Text(medicines.Expiry_Date.toIso8601String()),
  );
}


class MedCat {
  String Stock_ID  ;
  final String Category;
  final int Quantity;
  final DateTime Expiry_Date;


  MedCat({
    required this.Stock_ID,
    required this.Category,
    required this.Quantity,
    required this.Expiry_Date,
  });


  static  MedCat fromJson(Map<String, dynamic> json) =>
      MedCat(
          Stock_ID: json['Stock_ID'],
          Category: json['Category'],
          Quantity: json['Quantity'],
          Expiry_Date: (json['Expiry_Date'] as DateTime
          )
      );

}