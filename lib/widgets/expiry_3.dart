import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetExpiryDate extends StatelessWidget {
  final String documentID;

  GetExpiryDate({ required this.documentID});

  @override Widget build(BuildContext context) {

    CollectionReference med = FirebaseFirestore.instance.collection('medicines');

    return FutureBuilder<DocumentSnapshot>(
      future: med.doc(documentID).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
          snapshot.data!.data() as Map<String, dynamic>;
          return data['Expiry_Date'];
        }
        return Text('loading..');
      }),
    );
  }

}