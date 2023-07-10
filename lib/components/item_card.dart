// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modernfurn/details/details_screen.dart';
import '../modules/products.dart';
class ItemCard extends StatefulWidget {
 final Product product;

  const ItemCard({
    Key? key,
     required this.product,  
  }):super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(product: products[14],)));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Container(
          //  height: 150,
             height: MediaQuery.of(context).size.height*0.2,
               width: MediaQuery.of(context).size.width*0.40,
              decoration: BoxDecoration(
                color: widget.product.color,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black12,
                  width: 2.0,
                ),
              ),
              child: Image.asset(widget.product.image,
              
              fit: BoxFit.fill,
              ),
            
              
            ),
          ),
          Column(
            children: [
              Text(widget.product.title,
              style:TextStyle(color: Colors.black,) ,),
            ],
          ),
          Text("\$${widget.product.price}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),
          
          Text(widget.product.description,style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.purple[200],
          )
          ,)
        
        
        ],
        
      
      ),
    );
  }
}
