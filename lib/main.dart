import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var textFieldController=TextEditingController();
  var textFieldSifreController=TextEditingController();
  String alinanVeri="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Giris Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textFieldController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "İsim Yazınız",
                  labelText: "İsim",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                  filled: true,
                  fillColor: Colors.deepOrange,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textFieldSifreController,
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 6,
                decoration: InputDecoration(
                  hintText: "Şifre Yazınız",
                  labelText: "Şifre",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                  filled: true,
                  fillColor: Colors.deepOrange,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                child: Text("Yazdir",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  shadowColor: Colors.black,
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(color: Colors.black),
                  ),

                ),
                onPressed: (){
                  setState(() {
                    alinanVeri=textFieldController.text;
                  });

                },
              ),
            ),
            Text("Hoşdeldin : $alinanVeri",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.deepOrangeAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
            ),
            )
          ],
        ),
      ),
    );
  }
}
