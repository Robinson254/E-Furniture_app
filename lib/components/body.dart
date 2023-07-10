// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modernfurn/constants.dart';
import '../modules/products.dart';
import 'item_card.dart';
class Body extends StatelessWidget {

  const Body({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Smart Furniture",
        style: TextStyle(fontWeight: FontWeight.bold,color: kTextColor,fontSize: kDefaultPaddin),
        ),
        SizedBox(
          height: 5.0,
        ),
          Categories(),
          Expanded(
            child:GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                
                crossAxisCount: 2,
                childAspectRatio:0.75,
                mainAxisSpacing: 2,
                crossAxisSpacing:0.1,
    
                ),
                 itemBuilder: (context, index) => ItemCard(
                  product: products[index]
                 ),
                ),
                ),
        
      ],
    
    );
  }
}



class Categories extends StatefulWidget {
  
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String>categories=['SofaSet','6by6 Bed',"8by8 Bed",'Dining furniture',];
  //The first item by default will be selected
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index)=>buildCategory(index), 
      ),
      );
    
  }

 Widget buildCategory(int Index) {
  return GestureDetector(
    onTap: () {
      setState(() {
        selectedIndex=Index;
      });
    },
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          children: [
            Text(
              categories[Index],
              style: TextStyle(fontWeight: FontWeight.bold,
              color:selectedIndex==Index? kTextColor:kTextLightColor,
              ),
            ),
            Container(
              height: 2,
              width: 30,
              color:selectedIndex==Index? Colors.green:Colors.transparent,
              
            ),
          ],
        ),
        ),
    ),
  );
 }
}