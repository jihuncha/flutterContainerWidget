import 'package:flutter/material.dart';
import 'package:flutter_marble_study/pages/animation_sample_page.dart';


// import Animation Package
import 'package:animations/animations.dart';
import 'package:flutter_marble_study/pages/my_sample_page.dart';

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

  void testFunc() {
    OpenContainer(
      transitionType: ContainerTransitionType.fade,
      openBuilder: (context, VoidCallback _) {
        return _testPage();
      },
      closedElevation: 0,
      closedShape: RoundedRectangleBorder(),
      closedColor: Colors.blue,
      closedBuilder: (context, callback) {
        return Container(
          alignment: Alignment.center,
          width: 250,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        );
      }
    );
  }

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
                          builder: (context) => AnimationsDemo()));
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
                          child: const Text(
                            'Netmarble~',
                            style: TextStyle(color: Colors.pink,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          )),
                    ],
                  ),
                ),
                onPressed: () {
                  testFunc();
                },
              ),
              Container(
                height: 50,
              ),
              ElevatedButton(
                child: Text("상한가 가즈아~"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MySampleDemo()));
                },
              ),
            ],
          )),
    );
  }
}

class _testPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo details page'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Title',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(
                    color: Colors.black54,
                    fontSize: 30.0,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Demo details page',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(
                    color: Colors.black54,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
