import 'Product.dart';

class Stock {
  List<Product>? products;
  int totalCapacity;
  bool? isFull;

  Stock(this.totalCapacity,
      {this.isFull,
      this.products}); // argumentos opcionais devem ser os últimos

  push(Product product) {
    products?.add(product);
  }

  delete(Product product) {
    products?.removeWhere((element) => element.name == product.name);
  }

  listProducts() {
    for (var product in products!) {
      product.toString();
    }
  }

  @override
  String toString() {
    // TODO: implements total quantity of stock
    return 'O estoque tem a cacidade máxima de $totalCapacity produtos.\n'
        'Há x produtos armazenados nele!';
  }
}
