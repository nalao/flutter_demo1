import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hellogram123',
      theme: ThemeData(primaryColor: Colors.white),
      home: MyHomePage(title: 'Hellogram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Camera()));
            },
          ),
          actions: <Widget>[
            RotationTransition(
              child: IconButton(
                iconSize: 30,
                icon: Icon(Icons.send),
                onPressed: () {},
              ),
              turns: AlwaysStoppedAnimation(-30 / 360),
            ),
          ],
          title: Text(
            widget.title,
            style: TextStyle(fontFamily: 'instafont'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // Container(
                  //   width: 100,
                  //   height: 100,
                  //   decoration: BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       image: DecorationImage(
                  //         image: Image.asset('assets/images/c1.jpg'),
                  //       )),
                  // ),
                  CircleAvatar(
                    // backgroundColor: Colors.brown.shade800,
                    child: Image.asset('assets/images/c1.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Camera extends StatelessWidget {
  const Camera({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hi'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => {Navigator.pop(context)},
          child: Text('GO Back'),
        ),
      ),
    );
  }
}
