import "package:flutter/material.dart";
import "dart:math";

var left = 1;
var right = 2;
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "BST",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 119, 216),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          actions: [Icon(Icons.sms,color: Colors.white,)],
        ),
        backgroundColor: Color.fromARGB(255, 0, 68, 140),
        body: Column(children: [


          SizedBox(height: 100,),
          Container(
            child: Text(
              left == right?"Winner":"loss"
              ,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),

          Row(
            children: [

              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          left = Random().nextInt(4) + 1;
                        });
                      },
                      child: Image(
                        image: AssetImage("img/img$left.jpg"),
                      ))),
                      
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          right = Random().nextInt(4) + 1;
                        });
                      },
                      child: Image(
                        image: AssetImage("img/img$right.jpg"),
                      ))),
            ],
          ),
        ]),
      ),
    );
  }
}
