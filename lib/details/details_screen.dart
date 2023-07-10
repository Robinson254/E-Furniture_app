// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modernfurn/components/body2.dart';
import 'package:modernfurn/constants.dart';
import '../modules/products.dart';
class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key,required this.product}):super(key: 
  key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body2(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back),color: Colors.white,),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
        SizedBox(width: kDefaultPaddin/2,),
      ],
    );
  }
}