import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Dashbody(),
    );
  }
}

class Dashbody extends StatefulWidget {
  const Dashbody({Key? key}) : super(key: key);

  @override
  _DashbodyState createState() => _DashbodyState();
}

class _DashbodyState extends State<Dashbody> {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      children: [
        SizedBox(height: 50,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green,
            ),
            Text("Hello, Tomiwa",
              style:TextStyle(
                fontWeight: FontWeight.bold
              ),),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            height: 50,
              width: 50,
              child:IconButton(icon: Icon(Icons.local_fire_department,
              color: Colors.white,),
                onPressed: () {  },)),
          ],
        ),
        SizedBox(height: 25,),
        Container(height: 80,
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Stats",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  Text("Muscles",
                    style: TextStyle(fontSize: 40),),
                ],
              ),
              Divider()
            ],
          ),
        ),
        Center(
          child:Column(
            children: [
              Text("58",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 80,
              ),),
              SizedBox(height: 5,),
              Text("Workouts Completed",
              style: TextStyle(
                fontSize: 17
              ),),
              SizedBox(height: 30,)
            ],
          ),
        ),
        Container(height: 100,
        color: Colors.transparent,
        child: Row(
          children: [
            Flexible(child: Container(alignment: Alignment.center,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text('72.4',
                        style: TextStyle(fontSize: 46),),
                      Text('kg', style: TextStyle(
                        fontSize: 30,
                        fontFeatures: [
                          FontFeature.enable('subs'),
                        ],
                      ),)
                    ],
                  ),
                  SizedBox(height: 7,),
                  Text("Current Weight")
                ],
              ),
            )),
            VerticalDivider(
              thickness: 2,
            ),
            Flexible(child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10,0,0,0,),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('7.6kg',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                    SizedBox(height: 10,),
                    LinearProgressIndicator(),
                    SizedBox(height: 10,),
                    Text("Left to Gain")
                  ],
                ),
              ),
            ))
          ],
        ),),
        SizedBox(height: 30),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange,
                    child: IconButton(
                      icon: Icon(
                        Icons.power,
                        color: Colors.deepOrangeAccent,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text('12.6',
                        style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold),),
                      Text('kg', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFeatures: [
                          FontFeature.enable('subs'),
                        ],
                      ),),
                    ]
                  ),
                  Text("Burned")
                ]),
            Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange,
                    child: IconButton(
                      icon: Icon(
                        Icons.power,
                        color: Colors.deepOrangeAccent,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text('12.6',
                          style: TextStyle(fontSize: 30,
                              fontWeight: FontWeight.bold),),
                        Text('kg', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFeatures: [
                            FontFeature.enable('subs'),
                          ],
                        ),),
                      ]
                  ),
                  Text("Burned")
                ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange,
                    child: IconButton(
                      icon: Icon(
                        Icons.power,
                        color: Colors.deepOrangeAccent,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text('12.6',//
                          style: TextStyle(fontSize: 30,
                              fontWeight: FontWeight.bold),),
                        Text('kg', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFeatures: [
                            FontFeature.enable('subs'),
                          ],
                        ),),
                      ]
                  ),
                  Text("Burned")
                ]),
          ]
        )
          ],
        );
  }
}
