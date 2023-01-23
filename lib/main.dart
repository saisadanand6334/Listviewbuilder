 import 'package:flutter/material.dart';

 void main() {
  runApp(const Viewbuilder());
 }

 class Viewbuilder extends StatefulWidget {
   const Viewbuilder({Key? key}) : super(key: key);

   @override
   State<Viewbuilder> createState() => _ViewbuilderState();
 }

 class _ViewbuilderState extends State<Viewbuilder> {
   @override
   List k = ['container1','container2','container3','container4'];
   List o = [Colors.deepPurple,Colors.limeAccent,Colors.lightBlueAccent,Colors.orange];
   List p = ['David','Jhon','Leo','Abraham'];
   List w =['D','J','L','A'];
   List h =['City:Mexico','City:Chicago','City:Rio','City:Delhi'];
   Widget build(BuildContext context) {
     return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
           Center(
          child: Padding(
              padding: const EdgeInsets.only(right: 850),
             child: Text('view',
               style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.w400),),
           ),
          ),
         leading: IconButton(onPressed: (){},
             icon: Icon(Icons.arrow_back,
                   color: Colors.black)),
        ),
        body: Column(
       children: [SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text('List view search',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w400),),
            ],
          ),
        ),SizedBox(height: 20,),
         TextField(decoration: InputDecoration(
         suffixIcon:Icon(
           Icons.close,color: Colors.black,),
          label: IconButton(onPressed: (){},           icon:Icon(Icons.search,           color: Colors.black,),
           ),
           border: OutlineInputBorder(),
         ),),SizedBox(height: 20,),
           ListView.builder(shrinkWrap: true,
               itemCount: k.length,
               itemBuilder: ((context, index) {
                 return Padding(
                  padding: const EdgeInsets.all(8.0),
                   child: Row(
                    children: [
                        CircleAvatar(radius: 44,backgroundColor: o[index],
                         child: Center(
                            child: Text(w[index],
                              style: TextStyle(fontSize: 35,
                                 fontWeight: FontWeight.w200,color: Colors.black),),
                        ),),
                        SizedBox(width: 20,),
                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(p[index],
                              style: TextStyle(fontSize: 20,
                                 fontWeight: FontWeight.w700,
                                  color: Colors.black),),
                          Text((h[index]),
                              style: TextStyle(fontSize: 20,
                                  fontWeight:FontWeight.normal,
                                  color: Colors.black ),),

                          ],
                        )
                      ],
                    ),
                  );



                })),
          ],
        ),
       ),
     );
   }
 }
