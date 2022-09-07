void main() {
  // Mercado
}

class Product {
  String name;
  double price;
  int quantity;
  bool? isAvailable;

  Product(this.name,
      {required this.price, required this.quantity, this.isAvailable = true});

  Product.named(
      {required this.name, required this.price, required this.quantity, this.isAvailable});
}

class Stock {
  List<Product>? products;
  int totalCapacity;
  bool? isFull;

  Stock(this.totalCapacity, {this.isFull, this.products}); // argumentos opcionais devem ser os últimos

  push(List<Product> products) {
    for (var product in products) {
      this.products!.add(product);
    }
  }
  delete(Product product) {
    products!.removeWhere((element) => element.name == product.name);
  }
}
