void main() {
  List<Map<String, dynamic>> orders = [
    {'orderId': '1', 'ordername': 'cola', 'price': '10'},
    {'orderId': '2', 'ordername': 'chips', 'price': '20'},
    {'orderId': '3', 'ordername': 'chocolate', 'price': '30'},
  ];

  for (int i = 0; i < orders.length; i++) {
    EnterYourRequest(
      orderId: int.parse(orders[i]["orderId"]),
      price: double.parse(orders[i]["price"]),
    );
  }
}

void EnterYourRequest({
  required int orderId,
  String? ordername,
  required double price,
}) {
  double tax = price * 0.02;
  double newPrice = price + tax;

  print("The price of Item $orderId is $price");
  print("New price after tax is ${newPrice}");
  print("---------------------------------");
}
