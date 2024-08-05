import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  var nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Center(
            child: Column(
          children: [
            Text(
              "This is my first app",
              style: GoogleFonts.radioCanada(
                textStyle: TextStyle(fontSize: 32, color: Colors.blue)
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text("Welcome to my app",
              style: GoogleFonts.oswald(),),
            SizedBox(
              height: 8,
            ),
            Text("I hope you enjoy it"),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // center the content of the row to the right
              children: [
                Text("This is left"),
                SizedBox(
                  width: 8,
                ),
                Text("This is right")
              ],
            ),
            SizedBox(height: 8,),
            Image.network("https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/08/21/15/kuala-lumpur.jpg"),
            TextField(decoration: InputDecoration(hintText: "Enter your name"),
            controller: nameEditingController,),
            TextButton(onPressed: (){

              // Write in log the word "Hello World"
              print("Hello ${nameEditingController.text}");

              // Creating a snackbar
              var snackbar = SnackBar(content: Text("Hello ${nameEditingController.text}"));
              // Show the snackbar in the scaffold
              ScaffoldMessenger.of(context).showSnackBar(snackbar);

            }, child: Text("Press me"))
          ],
        )),
      ),
    );
  }
}
