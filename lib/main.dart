import 'dart:html';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[400],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 30,
                child: Image.network("./image/login.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Login"),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                width: 200,
                height: 200,
                child: Image.network("./image/flutter.png"),
              ),
            ),
            //ROW1 (User Name)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 250,
                  child: TextField(
                    style: TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.teal,
                        ),
                        labelText: "User Name",
                        hintText: "Enter User Name"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //ROW2 (Password)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 250,
                  child: TextField(
                    style: TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.teal,
                        ),
                        labelText: "Password",
                        hintText: "Enter Password"),
                    obscureText: true,
                  ),
                )
              ],
            ),
            //Forgot Password Link
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: InkWell(
                child: Text("Forgot Password!",
                style: TextStyle(color: Colors.teal[400], fontSize: 13),),
                onTap: () => print("Thank You for Informing us!"),
              ),
            ),
            // BUTTON (Login)
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                width: 100,
                height: 35,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal[400]
                  ),
                  onPressed: () {},
                  child: Text("Login"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
