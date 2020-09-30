import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.easeInOutQuint)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 50 * animation.value,
        child: GestureDetector(
          onTap: () {
            myanicon.forward(from: 0.2);
          },
          child: Container(
            width: 300 * animation.value + 25,
            height: 150 * animation.value + 70,
            color: Color.fromRGBO(50, 10, 50, 0.8),
            child: Center(
              child: Center(
                child: Text(
                  'My Animation App',
                  style: TextStyle(
                      fontSize: 36.0 * animation.value + 3.0,
                      color: Colors.purpleAccent),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
