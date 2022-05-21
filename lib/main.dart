import 'package:flutter/material.dart';
import 'package:flutter_marble_study/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: Text("가즈아아아아아"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyTestWidget()));
                },
              ),
              Container(
                height: 100,
              ),
              ElevatedButton(
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/flutter_title.png',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Netmarble~',
                            style: TextStyle(color: Colors.pink,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          )),
                    ],
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyTestWidget()));
                },
              ),

            ],
          )),
    );
  }
}
