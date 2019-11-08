// import 'dart:async';

// String createOrderMessage() {
//   var order = getUserOrder();
//   return 'Your order is: $order';
// }

// Future<String> getUserOrder() {
//   // Imagine that this function is
//   // more complex and slow.
//   return Future.delayed(Duration(seconds: 4), await` () => 'Large Latte');
// }

// // Synchronous
// main() {
//   print('Fetching user order...');
//   print(createOrderMessage());
// }

// Asynchronous
Future<String> createOrderMessage() async {
  var order = await getUserOrder();
  return 'Your order is: $order';
}

Future<String> getUserOrder() {
  // Imagine that this function is
  // more complex and slow.
  return Future.delayed(Duration(seconds: 4), () => 'Large Latte');
}

// Asynchronous
main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}

// 'Fetching user order...'
// 'Your order is: Large Latte'
