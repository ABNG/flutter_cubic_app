import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

//website  poly.google.com for 3d objects
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  Object model;
  @override
  void initState() {
    model = Object(fileName: 'assets/mobile/model.obj');
    //i can add another object here
    //model2 = Object(fileName: 'assets/mobile/model2.obj');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Cube(
          //create another cube inside column
          onSceneCreated: (Scene scene) {
            scene.world.add(model);
            scene.camera.zoom = 4.0;
          },
        ),
      ),
    );
  }
}
