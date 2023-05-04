import 'dart:math';

import 'package:bmi_app/bmi_result.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget
{
  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {

  bool isMale=true;
  double height =120;
  int wight = 40;
  int age = 15;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text(
          "BMI Calculator",
        ),

      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.ac_unit,
                                size: 70,
                                color:isMale?Colors.black: Colors.white,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 25,
                                  color:isMale? Colors.black:Colors.white,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: isMale?Colors.white:Colors.white30,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onTap: (){
                          setState(
                              (){
                                isMale=true;
                              }
                          );
                        },
                      ),
                    ),
                   const SizedBox(
                     width: 20.0,
                   ),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.accessibility,
                                size: 70,
                                color:isMale? Colors.white:Colors.black,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 25,
                                  color:isMale? Colors.white:Colors.black,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color:isMale? Colors.white30:Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onTap: (){
                          setState(
                              (){
                                isMale=false;
                              }
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:25.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${height.round()}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value:height,
                          max: 220,
                          min: 80,
                          onChanged:(value){
                            setState(
                                (){
                                  height=value;
                                }
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child:Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "${wight}",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    onPressed: (){
                                      setState(
                                          (){
                                            wight--;
                                          }
                                      );
                                    },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  backgroundColor: Colors.white30,

                                ),
                                const SizedBox(width: 5.0,),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(
                                            (){
                                          wight++;
                                        }
                                    );
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Colors.white30,

                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "${age}",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(
                                            (){
                                          age--;
                                        }
                                    );
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  backgroundColor: Colors.white30,

                                ),
                                const SizedBox(width: 5.0,),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(
                                            (){
                                          age++;
                                        }
                                    );
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Colors.white30,

                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                child: MaterialButton(
                    onPressed: (){
                      setState(
                          (){
                            var result = wight / pow(height/100, 2);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder:(context)=>BMIResult(isMale:isMale,age: age,result: result,), ),
                            );
                          }
                      );
                    },
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}