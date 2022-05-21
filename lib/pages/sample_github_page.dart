import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class TempGithubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String searchString = "abv";
  ContainerTransitionType _transitionType = ContainerTransitionType.fadeThrough;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: OpenContainer<String>(
            transitionType: _transitionType,
            transitionDuration: const Duration(milliseconds: 2000),
            openBuilder: (_, closeContainer) => SearchPage(closeContainer),
            // onClosed: (res) => setState(() {
            //   searchString = res!;
            // }),
            tappable: false,
            closedElevation: 0,
            closedShape: RoundedRectangleBorder(),
            middleColor: Colors.grey,
            closedColor: Colors.black,
            closedBuilder: (_, openContainer) => SearchBar(
              searchString: searchString,
              openContainer: openContainer,
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar(
      {Key? key, required this.searchString, required this.openContainer})
      : super(key: key);

  final String searchString;
  final VoidCallback openContainer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      InkWell(
          onTap: openContainer,
          child:
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/flutter_title.png',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            color: Colors.black,
          ),
    ),


      // Material(
      // elevation: 3,
      // borderRadius: BorderRadius.circular(5),
      // child: InkWell(
      //   onTap: openContainer,
      //   child:
      //   Container(
      //     alignment: Alignment.center,
      //     child: Image.asset(
      //       'assets/images/flutter_title.png',
      //       height: 200,
      //       width: double.infinity,
      //       fit: BoxFit.cover,
      //     ),
      //   ),


        // Container(
        //   padding: EdgeInsets.all(10),
        //   color: Colors.white,
        //   child: Row(
        //     children: [
        //       Icon(Icons.search),
        //       SizedBox(width: 10),
        //       searchString != null
        //           ? Expanded(child: Text(searchString))
        //           : Spacer(),
        //       Icon(Icons.mic),
        //     ],
        //   ),
        // ),
      // ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage(
      this.onClose, {
        Key? key,
      }) : super(key: key);

  final void Function({String returnValue}) onClose;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : InkWell(
          child: Image.asset(
            'assets/images/flutter_title.png',
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          onTap: () {
            onClose(returnValue: 'bye');
          },
        ),


        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Container(
        //       padding: EdgeInsets.symmetric(horizontal: 10),
        //       decoration: BoxDecoration(
        //         boxShadow: [
        //           BoxShadow(
        //             offset: Offset(0, 2),
        //             spreadRadius: 0,
        //             blurRadius: 1,
        //             color: Colors.black26,
        //           )
        //         ],
        //         color: Colors.white,
        //       ),
        //       child: Row(
        //         children: [
        //           IconButton(
        //             icon: Icon(Icons.arrow_back),
        //             onPressed: onClose,
        //           ),
        //           Spacer(),
        //           Icon(Icons.mic),
        //         ],
        //       ),
        //     ),
        //
        //     Padding(
        //       padding: const EdgeInsets.all(20.0),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           OutlinedButton(
        //             onPressed: () => onClose(returnValue: 'Flutter'),
        //             child: Text('Search: "Flutter"'),
        //           ),
        //           OutlinedButton(
        //             onPressed: () => onClose(returnValue: 'Rabbit'),
        //             child: Text('Search: "Rabbit"'),
        //           ),
        //           OutlinedButton(
        //             onPressed: () => onClose(returnValue: 'What is the Matrix'),
        //             child: Text('Search: "What is the Matrix"'),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}