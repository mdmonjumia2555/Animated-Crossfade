import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool x = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                  height: 150,
                  color: Colors.brown,
                  child: FlatButton(
                    color: Colors.blueGrey,
                    height: 20,
                    minWidth: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Container(
                          height: 30,
                          width: 100,
                          color: Colors.white,
                          child: Center(child: Text('Click Me'))),
                    ),
                    onPressed: () {
                      setState(() {
                        x = false;
                      });
                    },
                  ),
                ),
                secondChild: Center(
                  child: Text(
                    'Great',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                      color: Colors.white,
                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),
                crossFadeState:
                    x ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: Duration(seconds: 1)),
          ],
        ),
      ),
    );
  }
}
