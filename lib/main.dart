import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int  Compteur=0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Les boutons"),
        ),
        body: Column(
          children: [     
            Expanded(
              flex: 9,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: (){
                   print("Le compteur est $Compteur")
                    ;},
                  child: Text("Afficher",style: TextStyle(fontSize: 70),),
                  textColor: Colors.amber,
                  ),
              decoration: BoxDecoration(
                 // color: Colors.red
                 image: DecorationImage(
                  image:AssetImage("assets/images/ofppt.jpg",),
                  fit: BoxFit.fill),
              ), 
            ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   IconButton(
              onPressed: (){Compteur=Compteur-1;},
              icon: Icon(Icons.arrow_circle_left),
              iconSize: 60,
                color: Colors.amber,
            ),
              MaterialButton(onPressed: (){Compteur=0;},
              color: Colors.amber,
              child: Text("Annuler",style: TextStyle(fontSize: 20),),
              textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              )
              
              ,
              
              IconButton(
              onPressed: (){Compteur=Compteur+1;},
              icon: Icon(Icons.arrow_circle_right),
              iconSize: 60,
               color: Colors.amber,
            ),
              
                ]),
              ),)
          ],
        ),
      ),
    );
  }
}