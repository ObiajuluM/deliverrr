import 'package:collection/collection.dart';
import 'package:deliverrr/models/cart_item.dart';
import 'package:deliverrr/models/food.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Resturant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    // burger
    Food(
      name: "Classic Cheese burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/burgers/food.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Jurassic Cheese burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/burgers/food.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Platonic Cheese burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/burgers/food.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Inter Cheese burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/burgers/food.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Super Cheese burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/burgers/food.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),

    /// salad
    Food(
      name: "Super Salad",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/salads/food.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Cooper Salad",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/salads/food.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Zaper Salad",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/salads/food.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Muper Salad",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/salads/food.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Duper Salad",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/salads/food.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),

    /// desserts
    Food(
      name: "The dessert",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/desserts/food.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "My dessert",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/desserts/food.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Your dessert",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/desserts/food.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Our dessert",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/desserts/food.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Their dessert",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/desserts/food.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),

    // drinks
    Food(
      name: "Drink Fanta",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/drinks/food.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Drink Coke",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/drinks/food.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Drink Wine",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/drinks/food.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Drink Apple",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/drinks/food.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Drink Malt",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/drinks/food.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),

    /// Side
    Food(
      name: "Side My ",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/drinks/food.jpg",
      price: 0.99,
      category: FoodCategory.side,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Side of ",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/drinks/food.jpg",
      price: 0.99,
      category: FoodCategory.side,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Side By ",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/drinks/food.jpg",
      price: 0.99,
      category: FoodCategory.side,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Side Own ",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/drinks/food.jpg",
      price: 0.99,
      category: FoodCategory.side,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "Side You ",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
      imagePath: "lib/images/drinks/food.jpg",
      price: 0.99,
      category: FoodCategory.side,
      availableAddons: [
        Addon(
          name: "Extra Dessert",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
    ),
  ];

  // Getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /// operations
  ///

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if the the item alrady exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // other wise add a new cart item
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    // update UI
    notifyListeners();
  }

  //
  //remove item from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  //get total prices in cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  ///  helpers
  // generate receipt
  String displayCartReceipt() {
    StringBuffer receipt = StringBuffer();
    receipt.writeln("Here's Your Receipt:");

    // format date up to seconds
    String formattedDate =
        DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
    receipt.writeln(formattedDate);

    //
    receipt.writeln();
    receipt.writeln("===================================");

    for (CartItem cartItem in _cart) {
      receipt.writeln("${cartItem.food.name} x${cartItem.quantity}");
      receipt.writeln("  ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Addons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln(
          "  Total: ${_formatPrice(cartItem.food.price * cartItem.quantity)}");
      receipt.writeln("-----------------------------------");
    }

    receipt.writeln();
    receipt.writeln("===================================");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Total Items: ${getTotalItemCount()}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$ ${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} ${_formatPrice(addon.price)}")
        .join(",");
  }
}
