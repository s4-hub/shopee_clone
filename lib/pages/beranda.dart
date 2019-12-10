import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
 
  @override
   BerandaState createState() =>  BerandaState();
}

class BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300.0,
        width: 600.0,
       decoration: new BoxDecoration(
         image: DecorationImage(
           image: new AssetImage('assets/images/Promo-Shopee-Indonesia.jpg'),
           fit: BoxFit.fill,
         )
       ),
       
    );
  }
}