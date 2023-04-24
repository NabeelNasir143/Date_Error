import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  DateTime timeIsMine = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FaceApp'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                  'Select Time: ${timeIsMine.year} - ${timeIsMine.month} - ${timeIsMine.day}'
                  //style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? megaTime = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2019),
                    lastDate: DateTime(2024),
                  );
                },
                child: Text('Get_Date'))
          ],
        ),
      ),
    );
  }
}
