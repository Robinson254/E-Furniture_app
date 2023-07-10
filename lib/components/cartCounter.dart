import 'package:flutter/material.dart';
class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfitems=1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
      
        children: [
          // ContainerCounter(),
          Container(
      width: 50,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
      ),
      child: OutlinedButton(
        
        onPressed: (){
          setState(() {
            if(numOfitems>1){
              numOfitems--;
            }
          });
      }, child: Align(
        alignment: Alignment.centerLeft,
        child: Icon(Icons.remove))),
        ),
        SizedBox(width: 2.0,),
          Text(numOfitems.toString().padLeft(2,"0"),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black45),),
          SizedBox(width: 2,),
           Container(
        width: 50,
        height: 40,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(1),
        ),
        child: OutlinedButton(
          
          onPressed: (){
        setState(() {
          numOfitems++;
        });
        }, child: Icon(Icons.add)),
      ),
       SizedBox(width: 100,),
      Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 216, 72, 216),
          borderRadius: BorderRadius.circular(12),
        ),
        child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.white,hoverColor: Colors.blue,),
      ),
        ],
      ),
      
    );
    
  }
}

class ContainerCounter extends StatelessWidget {
  
  const ContainerCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 50,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
      ),
      child: OutlinedButton(
        
        onPressed: (){
        
      }, child: Align(
        alignment: Alignment.centerLeft,
        child: Icon(Icons.remove))),
    );
  }
}