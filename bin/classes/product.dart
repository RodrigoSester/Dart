class Product {
  String name;
  double price;
  int quantity;
  bool? isAvailable;

  Product(this.name, {
    required this.price,
    required this.quantity,
    this.isAvailable = true
  });

  Product.named({
    required this.name,
    required this.price,
    required this.quantity,
    this.isAvailable
  }); // named constructor

  @override
  String toString() {
    return 'Nome: $name \n'
        'Preço: $price \n'
        'Quantidade: $quantity \n'
        'Está dísponível: ${hasStock(quantity)}';
  }
}

bool hasStock(int quantity) {
  return (quantity > 0) ? true : false;
}