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

// ignore: must_be_immutable
class Home extends StatelessWidget {


  const Home({Key? key}) : super(key: key);


@override
Widget build(BuildContext context) {
	
	// getting the size of the window
var	size = MediaQuery.of(context).size;
var	height = size.height;
var	width = size.width;

	return Scaffold(
	appBar: AppBar(
		title: const Text("Media Query"),
		backgroundColor: Colors.green,
	),
	body: Container(
		color: Colors.yellow,
		height: height/2,//half of the height size
		width: width/2,//half of the width size
	),
	);
}
}

