import 'package:flutter/material.dart';
import 'package:control_your_home/circular_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class BedRoom extends StatefulWidget {
  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  bool val = false;

  onSwitchValChanged(bool newVal) {
    setState(() {
      val = newVal;
    });
  }

  int active = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.deepPurple,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Bed Room',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                active = 1;
                              });
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.toys,
                                color: Colors.black,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: active == 1 ? Colors.deepOrange : Colors.white,
                                  border: Border.all(color: Colors.black12)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Fan',
                            style: TextStyle(
                              color: active == 1 ? Colors.deepOrange : Colors.black.withOpacity(0.44),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                active = 2;
                              });
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.music_note,
                                color: Colors.black,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: active == 2 ? Colors.deepOrange : Colors.white,
                                  border: Border.all(color: Colors.black12)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Sound',
                            style: TextStyle(
                              color: active == 2 ? Colors.deepOrange : Colors.black.withOpacity(0.44),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                active = 3;
                              });
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.lightbulb_outline,
                                color: Colors.black,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: active == 3 ? Colors.deepOrange : Colors.white,
                                  border: Border.all(color: Colors.black12)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Light',
                            style: TextStyle(
                              color: active == 3 ? Colors.deepOrange : Colors.black.withOpacity(0.44),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                active = 4;
                              });
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.laptop_mac,
                                color: Colors.black,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: active == 4 ? Colors.deepOrange : Colors.white,
                                  border: Border.all(color: Colors.black12)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Laptop',
                            style: TextStyle(
                              color: active == 4 ? Colors.deepOrange : Colors.black.withOpacity(0.44),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                active = 5;
                              });
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.tv,
                                color: Colors.black,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: active == 5 ? Colors.deepOrange : Colors.white,
                                  border: Border.all(color: Colors.black12)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'TV',
                            style: TextStyle(
                              color:active ==5?Colors.deepOrange : Colors.black.withOpacity(0.44),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                active=6;
                              });
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.access_alarm,
                                color: Colors.black,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: active == 6 ? Colors.deepOrange : Colors.white,
                                  border: Border.all(color: Colors.black12)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Fan',
                            style: TextStyle(
                              color: active == 6? Colors.deepOrange:Colors.black.withOpacity(0.44),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              CircularSlider(),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Current temperature',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black.withOpacity(0.44),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '16 °C',
                          style: TextStyle(fontSize: 35),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 110,top: 10),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'ON/OFF',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.44),
                          ),
                        ),
                        Container(
                          width: 70,
                            child: Switch(
                          activeColor: Colors.white,
                          activeTrackColor: Colors.deepPurple,
                          value: val,
                          onChanged: (newVal) {
                            onSwitchValChanged(newVal);
                          },
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 90.7),
                  width: double.infinity,
                  height: 100,
                  child: Center(child: Text('Set temperature',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 30,),)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
