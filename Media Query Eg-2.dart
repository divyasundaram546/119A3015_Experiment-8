// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Media Query';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);




@override
Widget build(BuildContext context) {
	
	// getting the orientation of the app
var orientation = MediaQuery.of(context).orientation;
	
	//size of the window
var	size = MediaQuery.of(context).size;
var	height = size.height;
var	width = size.width;

	return Scaffold(
	appBar: AppBar(
		title: Text("Media Query"),
		backgroundColor: Colors.green,
	),

	// checking the orientation
	body: orientation == Orientation.portrait?Container(
		color: Colors.blue,
		height: height/4,
		width: width/4,
	):Container(
		height: height/3,
		width: width/3,
		color: Colors.red,
	),
	);
}
}
