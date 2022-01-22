import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPressed(BuildContext context) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //onPressed: (){},
        child: Icon(Icons.add, size: 35),
        onPressed: () {},
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Todo"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(5),
        children: [
          ActivityCard(
            header: "Pay fees",
            date: "3rd Jan",
            list: "Pay bills",
          ),
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    required this.header,
    required this.date,
    required this.list,
    Key? key,
  }) : super(key: key);

  final String header, date, list;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: Checkbox(
                onChanged: (value) {},
                value: false,
              ),
            ),
            Container(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  header,
                  style: TextStyle(
                    //color, fontsize, fontweight
                    color: Colors.orange,
                    //fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Text(date),
                Text(list),
              ],
            ),
          ],
        ),
      ),
      color: Colors.yellow,
    );
  }
}
