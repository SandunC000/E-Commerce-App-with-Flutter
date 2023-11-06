import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan',
        price: '220',
        description:
            'The forward-thinking design of his latest signature shoe.',
        imagepath: 'lib/images/shoe (1).png'),
    Shoe(
        name: 'Zoom FREAK',
        price: '250',
        description: 'Gains aren’t given, they’re earned. ',
        imagepath: 'lib/images/shoe (2).png'),
    Shoe(
        name: 'Metcon 5',
        price: '180',
        description: 'Go get what’s yours.',
        imagepath: 'lib/images/shoe (3).png'),
    Shoe(
        name: 'Air Zoom',
        price: '160',
        description: 'withstand the rigors of high-intensity exertion.',
        imagepath: 'lib/images/shoe (4).png')
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
