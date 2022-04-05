import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Raised Button',
	theme: ThemeData(
		primarySwatch: Colors.blue,
	),
	home: MyHomePage(),
	debugShowCheckedModeBanner: false,
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
String istapped = '';
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: Text('ElevatedButton'),
		backgroundColor: Color.fromARGB(255, 65, 33, 243),
	),
	body: Center(
		child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: <Widget>[
			RaisedButton(
			//	 disabledColor: Colors.red,
			// disabledTextColor: Colors.black,
			padding: const EdgeInsets.all(20),
			textColor: Colors.white,
			color: Colors.yellow,
			onPressed: () {
				setState(() {
				istapped = 'Button tapped';
				});
			},
			child: Text('Belajarfluter.com'),
			),
			Text(
			istapped,
			textScaleFactor: 2,
			)
		],
		),
	),
	backgroundColor: Color.fromARGB(255, 253, 254, 225),
	);
}
}
