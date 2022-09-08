import 'classes/index.dart';
import 'dart:io';

import 'error/ErrorMessage.dart';

void main() {
  // Mercado
  String? capacity;
  String? insert;

  ErrorMessage error;

  do {
    capacity = insertValue('Qual a capacidade do seu estoque?');
    if (int.parse(capacity!) < 0 || capacity == '') {
      error = ErrorMessage('O seu estoque deve ter uma capacidade maior que 0', 101);
      print(error.toString());
    }
  } while (int.parse(capacity) < 0 || capacity == '');

  Stock stock = Stock(int.parse(capacity));

  do {
    String? name = insertValue('Qual o nome do produto que deseja cadastrar?');
    String? price = insertValue('Qual o valor do produto?');
    String? quantity = insertValue('Qual a quantidade deste produto?');

    Product product = Product.named(
        name: name!,
        price: double.parse(price!),
        quantity: int.parse(quantity!));

    print(product.toString());
    stock.push(product);

    insert = insertValue('Deseja cadastrar mais algum produto? y/n');
  } while (insert == 'y');

  print(stock.toString());
}

String? insertValue(String message) {
  print(message);
  return stdin.readLineSync();
}
