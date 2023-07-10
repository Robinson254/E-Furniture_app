// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modernfurn/components/body.dart';
import 'package:modernfurn/constants.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Body(),
    );
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 82, 192, 80),
      elevation: 0,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),
      color: Colors.white,
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search),
        color: Colors.white,
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined),color:Colors.white,
        ),
        SizedBox(width: kDefaultPaddin/2,)
      ],
    );
  }
}