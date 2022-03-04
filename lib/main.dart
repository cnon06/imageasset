import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

  String resim = "lib/images/ataturk1.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(resim, width: 200,),
            TextButton(onPressed: ()
                {
                  setState(() {
                    resim = "lib/images/ataturk1.jpg";
                  });


                }, child: Text("Resim1")),
            TextButton(onPressed: ()
            {
              setState(() {
                resim = "lib/images/planets.png";
              });

            }, child: Text("Resim2"))
          ],
        ),
      ),

    );
  }
}
