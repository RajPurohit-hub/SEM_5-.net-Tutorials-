import 'package:flutter/material.dart';

import 'models/cart_item.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  List<CartItem> cartItems = [
    CartItem(
      imageUrl:
          'data:image/jpeg;base64,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',
      name: 'Running Shoes',
      price: 2999.0,
      quantity: 1,
      description: 'Comfortable running shoes with breathable mesh',
    ),
    CartItem(
      imageUrl: 'https://via.placeholder.com/150?text=Watch',
      name: 'Smart Watch',
      price: 4999.0,
      quantity: 2,
      description: 'Waterproof smartwatch with health tracking',
    ),
    CartItem(
      imageUrl: 'https://via.placeholder.com/150?text=Bag',
      name: 'Laptop Bag',
      price: 1599.0,
      quantity: 1,
      description: 'Durable laptop bag with multiple compartments',
    ),
    CartItem(
      imageUrl: 'https://via.placeholder.com/150?text=Headphones',
      name: 'Bluetooth Headphones',
      price: 1999.0,
      quantity: 3,
      description: 'Noise-cancelling over-ear headphones',
    ),
    CartItem(
      imageUrl: 'https://via.placeholder.com/150?text=Book',
      name: 'Programming Book',
      price: 799.0,
      quantity: 1,
      description: 'Learn Dart & Flutter with hands-on projects',
    ),
    CartItem(
      imageUrl: 'https://via.placeholder.com/150?text=Mouse',
      name: 'Wireless Mouse',
      price: 699.0,
      quantity: 2,
      description: 'Ergonomic wireless mouse with long battery life',
    ),
    CartItem(
      imageUrl: 'https://via.placeholder.com/150?text=Keyboard',
      name: 'Mechanical Keyboard',
      price: 2899.0,
      quantity: 1,
      description: 'RGB mechanical keyboard with tactile switches',
    ),
    CartItem(
      imageUrl: 'https://via.placeholder.com/150?text=PhoneCase',
      name: 'Phone Case',
      price: 499.0,
      quantity: 4,
      description: 'Shockproof transparent phone case',
    ),
    CartItem(
      imageUrl: 'https://via.placeholder.com/150?text=PowerBank',
      name: 'Power Bank',
      price: 1199.0,
      quantity: 1,
      description: '10,000 mAh fast-charging power bank',
    ),
    CartItem(
      imageUrl: 'https://via.placeholder.com/150?text=WaterBottle',
      name: 'Steel Water Bottle',
      price: 599.0,
      quantity: 2,
      description: 'Insulated stainless steel bottle, 1 litre',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) => cartItem(cartItems[index]),
      ),
    );
  }

  Widget cartItem(CartItem cart_item) {
    return Card(
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            // image
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple,
              child: Image.network(cart_item.imageUrl),
            ),
            // description
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${cart_item.name}',
                    style: TextStyle(
                      fontSize: 30,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    '${cart_item.description}',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '\$${cart_item.price} * ${cart_item.quantity}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            // amount
            Text('${cart_item.amount} \$', style: TextStyle(fontSize: 40)),
          ],
        ),
      ),
    );
  }
}
