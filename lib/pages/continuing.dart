import 'package:first_flutter_app/pages/home.dart';
import 'package:first_flutter_app/pages/question.dart';
import 'package:flutter/material.dart';

class Continuing extends StatefulWidget {
  const Continuing({super.key});

  @override
  State<Continuing> createState() => _ContinuingState();
}

class _ContinuingState extends State<Continuing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff348ef2),
          Color(0xff4183f1),
          Color(0xff5177ee)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
            Image.asset("images/air-balloon.png"),
            Text(
              "Level 2",
              style: TextStyle(
                  color: Color.fromARGB(220, 255, 255, 255),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "Continuing",
              style: TextStyle(
                  color: Color.fromARGB(220, 255, 255, 255),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Do you feel confident? Here you'll challenge one of our most difficult travel question!",
              style: TextStyle(
                  color: Color.fromARGB(220, 255, 255, 255),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 60.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Question()));
              },
              child: Container(
                child: Material(
                  elevation: 15.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Color(0xff5177ee),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
