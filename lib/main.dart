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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/barber2.png"),
                  fit: BoxFit.fitWidth),
            ),
          ),
          Container(
            height: 120,
            // margin: EdgeInsets.only(bottom: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/barbertitle.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              label: Text(
                "Log in with PHONE",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
            ),
          )
        ],
      ),
    );
  }
}
