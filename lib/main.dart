// import 'dart:html';

// import 'dart:ffi';
// import 'dart:html';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        // useMaterial3: true,
      // ),
      home: MyHomePage(title: 'Flutter Rich'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: const Color(0xff0098FA),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title:const Text("Flutter RichText",style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child:Text.rich(
           TextSpan(
          // Column(
          children: <InlineSpan>[
            const TextSpan(text: 'RichText helps to create\n',style: TextStyle(
              color:Colors.black54,
              fontSize: 22,
              ),
            ),
            const TextSpan(text: "Highlighted",style: TextStyle(
              color:Colors.red,
              fontSize: 43,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
              ),
              const TextSpan(text:',\n',style: TextStyle(
                color: Colors.black54,
                fontSize: 19,
              ),
            ),
                  const WidgetSpan(child:
                  Text("Clickable",style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff008Df3),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff008Df3),
                    ),
                  ),
                  ),
              const WidgetSpan(
                child: Text(", ",style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
                ),),
              ),
              WidgetSpan(
                  child: Container(
                    height: 30,
                    width: 130,
                      alignment : Alignment.center,
                      padding: const EdgeInsets.fromLTRB(3, 2, 1, 1),
                      // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                      decoration: BoxDecoration(border: Border.all(color: Colors.green,width: 2.4)),
                      child:const Text("OutlinedText",style: TextStyle(
                      color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        height: 1,
                      ),),
                  ),
                  ),
            const WidgetSpan(
              child: Text(".",style: TextStyle(
                fontSize: 17,
                color: Colors.black54,
            ),
            ),
            ),
            const TextSpan(text:"\n"),
            WidgetSpan(
              child: Container(
                padding: const EdgeInsets.fromLTRB(26, 2, 2, 1),
            child:const Text("Say Hi to RichText",style: TextStyle(
              color:Colors.black54,
              fontSize: 22,
            ),),
              )
            )
          ],
            ),
      ),
                  // SizedBox(
                  //   width: 100,
                    // height: 50,
      ),
              // ),
              // ,style: TextStyle(
              // color: Colors.green,
              //   backgroundColor: Colors.green,
                // cen,
                // decorationThickness: 2.85
            // ),
          // )
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          // mainAxisAlignment: MainAxisAlignment.center,
          // children: <Widget>[
          //   const Text(
          //     'You have pushed the button this many times:',
          //   ),
          //   Text(
          //     '$_counter',
          //     style: Theme.of(context).textTheme.headlineMedium,
          //   ),
          // ],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
        // tooltip: 'Increment',
        // child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
