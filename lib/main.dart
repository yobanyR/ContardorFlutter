import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = "juniork";
  int counterValue1 = 1;
  int counterValue2 = 2;
  int counterValue3 = 3;
  int counterValue4 = 4;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("counters"),
          elevation: 10,
        ),
        body: Center(
          child: Wrap(
            children: [
              Card(
                child: SizedBox(
                  width: 150,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '$counterValue1',
                          style: const TextStyle( 
                            fontSize: 44, 
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            counterValue1++;
                          });
                        },
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  width: 150,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '$counterValue2',
                          style: const TextStyle(
                            fontSize: 44, 
                            fontWeight: FontWeight.bold,
                            color: Colors.purple
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            counterValue2= counterValue2+2;
                          });
                        },
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  width: 150,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '$counterValue3',
                          style: const TextStyle(
                            fontSize: 44, 
                            fontWeight: FontWeight.bold, 
                            color: Colors.green,
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            counterValue3= counterValue3+3;
                          });
                        },
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  width: 150,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '$counterValue4',
                          style: const TextStyle(
                            fontSize: 44, 
                            fontWeight: FontWeight.bold, 
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            counterValue4= counterValue4+4;
                          });
                        },
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
               
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counterValue1 = 1;
                    counterValue2 = 2;
                    counterValue3 = 3;
                    counterValue4 = 4;
                  });
                },
                child: Icon(Icons.refresh),
              )  
            ],
            
          ),
        ), 
       /* bottomNavigationBar: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      counterValue1 = 1;
                      counterValue2 = 2;
                      counterValue3 = 3;
                      counterValue4 = 4;
                    });
                  },
                  child: const Icon(Icons.refresh),
                ),
            ),
          ],
        ),  */  
      ),
        
    );
  }
}