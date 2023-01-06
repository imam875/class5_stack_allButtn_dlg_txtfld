import 'package:class5/FormField.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 5"),
      ),
      body: ListView(
        children: [
          SizedBox(
            child: Center(
                child: Text(
              "Stack",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            )),
            height: 50,
          ),

          ///Stack........................
          Center(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 300,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                    right: 85,
                    top: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 65,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    height: 400,
                    width: 15,
                    color: Colors.brown,
                  ),
                ),
                Positioned(
                    top: 360,
                    left: 15,
                    child: Container(
                      height: 50,
                      width: 110,
                      color: Colors.brown,
                    ))
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text(
                      "AlertDialog",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.green.shade300,
                        shadowColor: Colors.pink,
                        foregroundColor: Colors.purple,
                        fixedSize: Size(150, 43)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                backgroundColor: Colors.green,
                                titleTextStyle:
                                    TextStyle(color: Colors.red, fontSize: 22),
                                title: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Warning......"),
                                ),
                                content: Text("Are you go to Next Page?"),
                                actions: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: StadiumBorder(),
                                          backgroundColor:
                                              Colors.redAccent.shade100,
                                          shadowColor: Colors.pink,
                                          foregroundColor: Colors.purple,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text("Cancel")),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 20, 8),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: StadiumBorder(),
                                          backgroundColor:
                                              Colors.redAccent.shade100,
                                          shadowColor: Colors.pink,
                                          foregroundColor: Colors.purple,
                                        ),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          formfield()),
                                                  (route) => route.isFirst);
                                        },
                                        child: Text("OK")),
                                  )
                                ],
                              ));
                    },
                  )),
            ],
          )
        ],
      ),
    );
  }
}
