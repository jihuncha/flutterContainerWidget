import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class MySampleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyContainer(),
    );
  }
}

class MyContainer extends StatefulWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  _MyContainerState createState() {
    return _MyContainerState();
  }
}

class _MyContainerState extends State<MyContainer> {
  // ContainerTransitionType _transitionType = ContainerTransitionType.fadeThrough;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyTempContainer(),
    );

    // ListView(
    //   padding: const EdgeInsets.all(8.0),
    //   children: <Widget>[
    //     ...List<Widget>.generate(10, (int index) {
    //       return OpenContainer<bool>(
    //         transitionType: _transitionType,
    //         openBuilder: (BuildContext _, VoidCallback openContainer) {
    //           return _DemoDetailsPage();
    //         },
    //         closedShape: const RoundedRectangleBorder(),
    //         closedElevation: 0.0,
    //         closedBuilder: (BuildContext _, VoidCallback openContainer) {
    //           return ListTile(
    //             onTap: openContainer,
    //             title: Text('Title item {index + 1}'),
    //             subtitle: const Text('subtitle text'),
    //           );
    //         },
    //       );
    //     }),
    //   ],
    // ),
    // );
  }
}

class MyTempContainer extends StatefulWidget {
  const MyTempContainer({Key? key}) : super(key: key);

  // const MyTempContainer(
  //     {Key key, @required this.openContainer}) : super(key: key);
  // final VoidCallback openContainer;

  @override
  State<MyTempContainer> createState() => _MyTempContainerState();
}

class _MyTempContainerState extends State<MyTempContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("안뇽"),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/flutter_title.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            OpenContainer(
              openBuilder: (context, VoidCallback _) {
                return Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                );
              },
              closedBuilder: (_, openContainer) => MyTempContainer(),
            )

            // InkWell(
            //   child:
            //   Container(
            //       alignment: Alignment.center,
            //       child: const Text(
            //         'Netmarble~',
            //         style: TextStyle(
            //             color: Colors.pink,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 22.0),
            //       )
            //   ),
            //   onTap: () {
            //   },
            // )




            // Container(
            //     alignment: Alignment.center,
            //     child: const Text(
            //       'Netmarble~',
            //       style: TextStyle(
            //           color: Colors.pink,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 22.0),
            //     )
            // ),
          ],
        ),
      ),
    );
  }
}

// OpenContainer(
//     transitionType: ContainerTransitionType.fade,
//     openBuilder: (context, VoidCallback _) {
//       return Container(
//         height: 200,
//         width: 200,
//         color: Colors.blue,
//       );
//     },
//     closedElevation: 0,
//     closedShape: RoundedRectangleBorder(),
//     closedColor: Colors.blue,
//     closedBuilder: (context, callback) {
//       return Container(
//         alignment: Alignment.center,
//         width: 250,
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: Text(
//             "Sign Up",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20),
//           ),
//         ),
//       );
//     }
// );
