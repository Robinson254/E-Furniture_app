import 'package:flutter/material.dart';
class Product{
   final String image,title,description;
   final int price,size,id;
   final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}
List<Product>products=[
Product(id: 1, image:"assets/a.png", title: "Modern Sofa", price: 5000, description: "Modernized ", size: 6, color: Color.fromARGB(255, 190, 218, 88),),
Product(id: 2, image:"assets/b.png", title: "Modern Bed", price: 5459, description: "Comfortable Bed 8by8", size: 8, color: Color.fromARGB(255, 190, 218, 88),),
Product(id: 3, image:"assets/c.png", title: "Modern Bed", price: 345, description: "better  relaxation", size: 12, color: Color.fromARGB(255, 92, 148, 160),),
Product(id: 4, image:"assets/d.png", title: "Modern Sofa", price: 5600, description: "Awesome ", size: 3, color: Color.fromARGB(255, 73, 186, 75),),
Product(id: 5, image:"assets/e.png", title: "Modern Sofa", price: 2500, description: "Buy a Quality Seat", size: 8, color: Color.fromARGB(255, 211, 146, 66),),
Product(id: 6, image:"assets/f.png", title: "Modern Sofa", price: 7044, description: "Bornshale Seat pass", size: 9, color: Color.fromARGB(255, 185, 128, 68),),
Product(id: 7, image:"assets/g.png", title: "Modern Sofa", price: 5043, description: "Love  your Seat", size: 7, color: Color.fromARGB(255, 141, 156, 86),),
Product(id: 8, image:"assets/f.png", title: "Modern Sofa", price: 2306, description: "Intesible Seat", size: 6, color: Color.fromARGB(255, 190, 218, 88),),
Product(id: 9, image:"assets/i.png", title: "Modern Sofa", price: 4506, description: "For  Extravagant rooms", size: 3, color: Color.fromARGB(255, 190, 218, 88),),
Product(id: 10, image:"assets/l.png", title: "Modern Sofa", price: 1200, description: "Comfortable Seat", size: 7, color: Color.fromARGB(255, 79, 142, 79),),
Product(id: 11, image:"assets/k.png", title: "Modernized Table Room", price: 2407, description: "Sofa quality Seats", size: 6, color: Color.fromARGB(255, 190, 218, 88),),
Product(id: 12, image:"assets/l.png", title: "Modern Sofa", price: 8540, description: "Palacial and incredible ", size: 5, color: Color.fromARGB(255, 47, 43, 91),),
Product(id: 13, image:"assets/l.png", title: "Modern Sofa", price: 2570, description: "Affordable Seat", size: 5, color: Color.fromARGB(255, 139, 79, 179),),
Product(id: 14, image:"assets/n.png", title: "Modern Sofa", price: 1687, description: "Comfortable Seat", size: 3, color: Color.fromARGB(255, 88, 218, 142),),
Product(id: 15, image:"assets/o.png", title: "Modern Sofa", price: 4780, description: "Enjoy and relaxation  ", size: 6, color: Color.fromARGB(255, 144, 171, 46),),
Product(id: 16, image:"assets/p.png", title: "Modern Living Room", price: 5000, description: "Quality Comfortable ", size: 3, color: Color.fromARGB(255, 190, 218, 88),),
Product(id: 17, image:"assets/q.png", title: "Modern Sofa", price: 7478, description: "Comfortable Seat", size: 6, color: Color.fromARGB(255, 209, 185, 69),),
Product(id: 18, image:"assets/r.png", title: "Modern Sofa", price: 9520, description: "Come and  Seat", size: 8, color: Color.fromARGB(255, 74, 177, 197),),
Product(id: 19, image:"assets/s.png", title: "Modern Hotel Parlor", price: 7450, description: "Asian Masquarable ", size: 3, color: Color.fromARGB(255, 106, 218, 138),),
Product(id: 20, image:"assets/t.png", title: "Modern Sofa", price: 2790, description: "Modernized Seat", size: 3, color: Color.fromARGB(255, 89, 97, 176),),
Product(id: 22, image:"assets/u.png", title: "Modern Sofa", price: 9056, description: "Quality  Seat", size: 3, color: Color.fromARGB(255, 190, 218, 88),),
Product(id: 23, image:"assets/v.png", title: "Modern Sofa", price: 3689, description: "Comfortable Seat", size: 12, color: Color.fromARGB(255, 90, 169, 188),),
Product(id: 24, image:"assets/w.png", title: "Modern Bed", price: 2905, description: "Enjoy the comfort", size: 7, color: Color.fromARGB(255, 108, 208, 161),),
Product(id: 25, image:"assets/x.png", title: "Modern Sofa", price: 6803, description: "Buy a nice Seat", size: 6, color: Color.fromARGB(255, 181, 141, 45),),
Product(id: 26, image:"assets/c.png", title: "Modern Sofa", price: 6890, description: "Affordable  Seat", size: 3, color: Color.fromARGB(255, 190, 218, 88),),
Product(id: 27, image:"assets/t.png", title: "Modern Sofa", price: 3689, description: "Quality Seat", size: 8, color: Color.fromARGB(255, 228, 151, 84),),
Product(id: 28, image:"assets/a.png", title: "Modernized Bed", price: 2489, description: "Enjoy healthy sleep", size: 6, color: Color.fromARGB(255, 229, 196, 77),),
];

List<Map<String, dynamic>> Data = [
  
];