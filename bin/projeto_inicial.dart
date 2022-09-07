import 'classes/index.dart';
import 'dart:io';

void main() {
  // Mercado
  String? capacity;
  String? insert;

  do {
    capacity = insertValue('Qual a capacidade do seu estoque?');
    if (int.parse(capacity!) < 0 || capacity == '') {
      print('Insira um valor válido!');
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

    insert = insertValue('Deseja cadastrar mais algum produto?');
  } while (insert == 'y');

  print(stock.toString());
}

String? insertValue(String message) {
  print(message);
  return stdin.readLineSync();
}
