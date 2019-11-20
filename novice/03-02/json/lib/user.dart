import 'address.dart';

class User {
  int id;
  String firstName, lastName, email;
  bool vip;
  String dateOfBirth;
  List<Address> shippingAddresses;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.vip,
    this.dateOfBirth,
    this.shippingAddresses,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return new User(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        vip: json['vip'],
        dateOfBirth: json['dateOfBirth']);
    // shippingAddresses: json['shippingAddresses']
    //     .map((value) => Address.fromJson(value))
    //     .toList());
  }
}
