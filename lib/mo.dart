import 'package:flutter/material.dart';

import 'modell.dart';


void main() {
  runApp(const Modelclass());
}

class Modelclass extends StatefulWidget {
  const Modelclass({Key? key}) : super(key: key);

  @override
  State<Modelclass> createState() => _ModelclassState();
}

class _ModelclassState extends State<Modelclass> {

  List<Demo>modellist=<Demo>[
    Demo(img: "img/bus.jpg", text: "Bus", icon: Icons.bus_alert_rounded),
    Demo(img:"img/beancar.jpg",text:'Car',icon:Icons.car_repair_rounded),
    Demo(img: "img/bike.jpg", text: "Bike", icon: Icons.pedal_bike_sharp),
    Demo(img:"img/train.jpg",text:'Train',icon:Icons.train),
    Demo(img: "img/flights.jpg", text: "Flight", icon: Icons.flight),


  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("Model class")),
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
              itemCount: modellist.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(modellist[index].img),
                        ),
                        Text(modellist[index].text,style: TextStyle(fontSize: 30),),
                        Icon(modellist[index].icon,size: 40,),
                      ],
                    ),
                  ),
                );
              }),
        ),

      ),
    );
  }
}

// class Demo {
//   String img;
//   String text;
//   IconData icon;
//   Demo({
//     required this.img,
//     required this.text,
//     required this.icon,
//   });
// }