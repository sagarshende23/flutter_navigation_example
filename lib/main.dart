import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: FirstScreen(),
        routes: <String, WidgetBuilder>{
          '/secondscreen': (BuildContext context) => SecondScreen(),
        });
  }
}

//First Screen
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation and Routing Example'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.deepPurple,
          child: Text(
            'Navigate To Second Screen',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/secondscreen');
          },
        ),
      ),
    );
  }
}

//Second Screen
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text(
              'Back To HomeScreen',
              style: TextStyle(color: Colors.white),
            ),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onPressed: () => Navigator.pop(context)),
      ),
    );
  }
}
