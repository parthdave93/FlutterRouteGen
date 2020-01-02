import 'package:flutter/material.dart';
import 'package:flutter_route_gen_example/route/example_route.dart';
import 'package:flutter_route_gen_example/screens/my_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (routeSettings)=>ExampleRoute.generateRoutes(routeSettings),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
