import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> controls = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter McFlutter',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(33, 150, 243, 1.0),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.only(bottom: 8, left: 15, right: 15),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.grey),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [Icon(Icons.account_circle, size: 50)],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Flutter McFlutter',
                        style: Theme.of(context).textTheme.headlineSmall),
                    Text('Experienced App Developer')
                  ],
                )
              ],
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('123 Main Street'), Text('(415) 555-0198')],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconGenerator('Test', Icons.accessibility, 0),
                iconGenerator('Test', Icons.timer, 1),
                iconGenerator('Test', Icons.phone_android, 2),
                iconGenerator('Test', Icons.phone_iphone, 3)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget iconGenerator(String snackText, IconData icon, int idx) {
    return IconButton(
        onPressed: () {
          final snackBar = SnackBar(content: Text(snackText));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          setState(() {
            this.controls[idx] = !this.controls[idx];
          });
        },
        icon: Icon(icon, color: !this.controls[idx] ? Colors.black : Colors.indigo));
  }
}
