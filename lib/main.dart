import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oop_proj/pages/add.dart';
import 'package:oop_proj/pages/avail.dart';
import 'package:oop_proj/pages/home.dart';
import 'package:oop_proj/pages/main_page.dart';
import 'package:oop_proj/pages/remove.dart';
import 'package:oop_proj/utils/constants.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
/*void main() {
  runApp(MyApp());
}*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Laundry UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.scaffoldBackGndColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: "/",
      onGenerateRoute: _onGenerateRoute,
    );
  }
}


Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch(settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
    case "/login":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Login();
      });
    case "/add":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Add_Stock();
      });
    case "/remove":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Remove_Stock();
      });
    case "/avail":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Avail();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
  }
}