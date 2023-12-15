import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Gazelle Low Black White",
      price: "408.000",
      imagePath: 'lib/images/gazelle_low_black_white.png',
      description:
          'The original silhouette of Compass that started it all in 1998.',
    ),
    Shoe(
      name: "Gazelle Low Lumut",
      price: "408.000",
      imagePath: 'lib/images/gazelle_low_lumut.png',
      description:
          'The original silhouette of Compass that started it all in 1998.',
    ),
    Shoe(
      name: "Gazelle Low White Blue",
      price: "408.000",
      imagePath: 'lib/images/gazelle_low_white_blue.png',
      description:
          'The original silhouette of Compass that started it all in 1998.',
    ),
    Shoe(
      name: "Gazelle Low Cream",
      price: "408.000",
      imagePath: 'lib/images/gazelle_low_cream.png',
      description:
          'The original silhouette of Compass that started it all in 1998.',
    ),
    Shoe(
      name: "Gazelle Hi Black White",
      price: "438.000",
      imagePath: 'lib/images/gazelle_hi_black_white.png',
      description:
          'The original silhouette of Compass that started it all in 1998.',
    ),
    Shoe(
      name: "Gazelle Low Lumut",
      price: "438.000",
      imagePath: 'lib/images/gazelle_hi_lumut.png',
      description:
          'The original silhouette of Compass that started it all in 1998.',
    ),
    Shoe(
      name: "Gazelle Low White Blue",
      price: "438.000",
      imagePath: 'lib/images/gazelle_hi_white_blue.png',
      description:
          'The original silhouette of Compass that started it all in 1998.',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
