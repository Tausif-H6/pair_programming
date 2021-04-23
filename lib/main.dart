import 'package:flutter/material.dart';
import 'package:pair_programming/screens/Home/widgets/rounded_icon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _color = Colors.blue;
  var _size = 400.0;
  var _roundness = 50.0;
  get color => _color;
  set color(value) => setState(() => _color = value);

  get size => _size;
  set size(value) => setState(() => _size = value);

  get roundness => _roundness;
  set roundness(value) => setState(() => _roundness = value);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: RoundedIcon(
            color: color,
            size: size,
            icon: Icons.alarm,
            roundness: roundness,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => color = Colors.red,
          backgroundColor: Colors.red,
          child: Icon(
            Icons.work,
            color: Colors.red,
            size: 20.0,
          ),
        ),
      ),
    );
  }
}
