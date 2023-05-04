import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget
{

  final double result;
  final bool isMale;
  final int age;

  BMIResult(
  {
    required this.result,
    required this.isMale,
    required this.age,

}
      );
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${isMale?"Male":"Female"}",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Age : ${age}",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Result : ${result.round()}",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

}