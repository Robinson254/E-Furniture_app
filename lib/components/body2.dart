// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:modernfurn/components/cartCounter.dart';
import 'package:modernfurn/constants.dart';
import 'package:modernfurn/modules/products.dart';
class Body2 extends StatelessWidget {
  final Product product;
  const Body2({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height*0.3),
                  padding: EdgeInsets.only(top: 20,left: 10,right: 10),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)
                    ),

                  ),
                  
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Color'),
                               Row(
                                children: [
                                   ColorDot(color: Color(0xff356c95)),
                                 ColorDot(color: Color(0xff356c95)),
                                  ColorDot(color: Color(0xff356c95)),
                                ],
                               )
                              
                              ],
                            ),
                          ),
                          Expanded(
                            child: RichText(text: TextSpan(
                              style: TextStyle(
                                color: Colors.purple,
                              ),
                              children: [
                                TextSpan(text: "Size\n",),
                                TextSpan(text: "2 Seater",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              ]
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: [
                          Text("This  commodities are made using hight quality material and therefore will serve you for a long period of time and enjoy quality relation of our furnitures.For More enquiries and feedback  Kindly reffer  to our Secretary via our email."),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CartCounter(),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                             height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20),
                              
                            ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text("Shop",style: TextStyle(
                                    color: Color.fromARGB(255, 14, 13, 13),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,),
                                    ),
                                    Icon(Icons.shopping_basket,color: Colors.black,)
                                  ],
                                ),
                              ),
                          ),
                          Container(
                             height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(20),
                              
                            ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Buy Now",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                                          ),),
                              ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(20),
                              
                            ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Facebook",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                                          ),),
                              ),
                          ),
                            Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Google",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("This is a cool Design",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    ),
                    Text(product.title,style: TextStyle(
                      color: Color.fromARGB(255, 241, 233, 224),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                    ),),
                    Row(
                      children: [
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(text: 'price\n',style:TextStyle(fontSize: 17) ),
                            TextSpan(text: '\$${product.price}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 218, 227, 231),),)
                          ]
                        ),
                        ),
                        SizedBox(width: kDefaultPaddin,),
                        Expanded(child: Image.asset(product.image,
                        fit: BoxFit.fill,
                        ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected=false;
  const ColorDot({
    super.key, required this.color, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPaddin/4,right: kDefaultPaddin/2),
      padding: EdgeInsets.all(2.5),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:color,

        )
      ),
      child: DecoratedBox(decoration: BoxDecoration(
        color:color,
        shape: BoxShape.circle,
      )),
    );
  }
}