 import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '6000',
      description: 'The Special shoe for special people',
      imagePath: 'lib/images/PngItem_2441722.png',
    ),
     Shoe(name: 'Air Jordan',
      price: '4000',
      description: 'A must have to your collection to put the C in Classic',
      imagePath: 'lib/images/PngItem_1149746.png',
    ),

    Shoe(name: 'KD Treys',
      price: '8000',
      description: 'Ndi ike ji obodo',
      imagePath: 'lib/images/Kyrie.png',
    ),

    Shoe(name: 'Kyrie',
      price: '7500',
      description: ' when you want to make a statement we got you',
      imagePath: 'lib/images/629-6291278_kyrie-nike-kyrie-4-hd-png-download.png',
    ),
    Shoe(name: 'Paparazi',
      price: '7500',
      description: 'Money',
      imagePath: 'lib/images/ZoomFreak.png',
    ),

  ];


   // list of items in user cart
   List<Shoe> userCart = [];

   // get list of shoes for sale
   List<Shoe> getShoeList () {
     return shoeShop;
   }

   // get cart
  List<Shoe> getUserCart () {
     return userCart;
  }
   // add items to cart
   void addItemToCart(Shoe shoe) {
     userCart.add(shoe);
     notifyListeners();
   }

  // remove item from cart
   void removeItemFromCart(Shoe shoe){
     userCart.remove(shoe);
     notifyListeners();
   }
 }