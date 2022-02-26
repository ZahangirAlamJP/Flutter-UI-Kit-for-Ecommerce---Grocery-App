import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.amber,
        appBarTheme: AppBarTheme(color: Colors.white)),
    title: "Flutter UI",
    home: FlutterUI(),
  ));
}

class FlutterUI extends StatelessWidget {
  const FlutterUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
            color: Colors.red,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  image: DecorationImage(image: AssetImage("images/a.jpg")),
                  borderRadius: BorderRadius.circular(75)),
            ),

            //// click ctrl + #
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                /// Enter ctrl + R //
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Name",
                      hintText: "Name",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Name",
                      hintText: "Name",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    minWidth: 250,
                    height: 45,
                    color: Colors.red,
                    onPressed: () {},
                    child: Text(
                      "Update",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
