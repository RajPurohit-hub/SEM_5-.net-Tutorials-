class CartItem {
  final String imageUrl;
  final String name;
  final double price;
  int quantity;
  final String description;

  CartItem({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.quantity,
    required this.description,
  });

  double get amount => price * quantity;
}