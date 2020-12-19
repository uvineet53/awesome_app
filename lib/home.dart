import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var name = "Nobody";
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "AWESOME",
          style: TextStyle(
            letterSpacing: 1.5,
            fontSize: 36,
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: nameController,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: "Who's Awesome?",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Colors.yellow,
                onPressed: () {
                  setState(() {
                    name = nameController.text;
                    nameController.clear();
                  });
                },
                child: Text(
                  "SUBMIT",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "$name IS AWESOME!!!".toUpperCase(),
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.yellow,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
