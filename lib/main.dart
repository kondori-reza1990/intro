import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Selector',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> items = <Widget>[
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Icon(Icons.security),
        Lottie.asset("assets/password.json",
          height: 150,
          fit: BoxFit.fitHeight
        ),
        Text(
          "This app is Secure...",
          style: TextStyle(fontSize: 15, color: Colors.black),
        )
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Icon(Icons.language),
        Lottie.asset("assets/language.json",
            height: 150,
            fit: BoxFit.fitHeight),
        Text(
          "This app is Multi Language...",
          style: TextStyle(fontSize: 15, color: Colors.black),
        )
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Icon(Icons.face),
        Lottie.asset("assets/mobile.json",
            height: 150,
            fit: BoxFit.fitHeight),
        Text(
          "This app have beautiful UI",
          style: TextStyle(fontSize: 15, color: Colors.black),
        )
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: DefaultTabController(
            length: items.length,
            child: Builder(
                builder: (BuildContext context) => Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          TabPageSelector(),
                          Expanded(child: TabBarView(children: items)),
                        ],
                      ),
                    ))),
      ),
    );
  }
}
