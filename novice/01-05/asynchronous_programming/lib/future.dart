void main() {
  getUserProfile();
  print('fetching user photo...');
  print('show user bio');
}

// Imagine that this function is fetching user info from another service or database
Future<void> getUserProfile() {
  return Future.delayed(Duration(seconds: 3),
      () => print('name, email, address, phone number, profile picture'));
}
