import 'package:control_your_home/bedroom_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   int active = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 150,
        maxHeight: 250,
        color: Colors.deepPurple,
        borderRadius: BorderRadius.all(Radius.circular(30),),
        panel: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 20),
              width: 150,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.all(Radius.circular(30),)
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Quick remote access',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,),),
                SizedBox(height: 25,),
                Text('Swipe up to get fast access to your wireless \n remote control.',style: TextStyle(color: Colors.white.withOpacity(0.44)),),
              ],
            )
          ],
        ),
        body: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:20,top: 20,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5,),
                            child: Text('Welcome home',style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.4)),),
                          ),
                          Text('Ahmed Abogameel',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 75,top: 10,),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/moji.jpg'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 50,bottom: 70),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.99),
                        child: Icon(Icons.power,color: Colors.black,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:16.0,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('30.9',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6,top: 9,),
                                  child: Text('kwh',style: TextStyle(fontWeight: FontWeight.bold,),),
                                ),
                              ],
                            ),
                            Text('Power usage for today',style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          active = 1 ;
                        });
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Icon(Icons.wc,color: Colors.black,),
                            ),
                            SizedBox(height:30,),
                            Text('Bathroom',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,),),
                            SizedBox(height: 3,),
                            Text('1 device',style: TextStyle(color: Colors.black.withOpacity(0.44),),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: active == 1 ? Colors.deepOrange : Colors.white,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10),),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          active = 2;
                        });
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 25,),
                              child: Icon(Icons.tv,color: Colors.black,),
                            ),
                            SizedBox(height:30,),
                            Text('Living Room',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,),),
                            SizedBox(height: 3,),
                            Text('4 device',style: TextStyle(color: Colors.black.withOpacity(0.44),),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: active == 2 ? Colors.deepOrange : Colors.white,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10),),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          active = 3;
                        });
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 25,),
                              child: Icon(Icons.kitchen,color: Colors.black,),
                            ),
                            SizedBox(height:30,),
                            Text('Kitchen',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,),),
                            SizedBox(height: 3,),
                            Text('2 device',style: TextStyle(color: Colors.black.withOpacity(0.44),),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: active == 3 ? Colors.deepOrange : Colors.white,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10),),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          active = 4;
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> BedRoom()));
                        });
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 25,),
                              child: Icon(Icons.airline_seat_individual_suite,color: Colors.black,),
                            ),
                            SizedBox(height:30,),
                            Text('Bed Room',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,),),
                            SizedBox(height: 3,),
                            Text('7 device',style: TextStyle(color: Colors.black.withOpacity(0.44),),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: active == 4 ? Colors.deepOrange : Colors.white,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10),),
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
}
