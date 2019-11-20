import 'dart:convert';

// import 'dart:ffi';
// import 'package:json/user.dart';

var jsonStr = """
{
  "id": 1,
  "firstName": "Kariotta",
  "lastName": "Ginley",
  "email": "kginley0@domainmarket.com",
  "vip": true,
  "shippingAddresses": [
    {
      "address": "31 Coolidge Point",
      "city": "Amarillo",
      "state": "Texas",
      "country": "United States",
      "zipcode": "79105"
    },
    {
      "address": "4 Linden Center",
      "city": "Apache Junction",
      "state": "Arizona",
      "country": "United States",
      "zipcode": "85219"
    }
  ],
  "dateOfBirth": "3/6/1983"
}
""";

void main() {
  var result = json.decode(jsonStr);
  var user = new User.fromJson(result);
  print(user.dateOfBirth);
  print(user.firstName);
  print(user.lastName);
  print(user.id);
  print(user.email);
}

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
        dateOfBirth: json['dateOfBirth'],
        shippingAddresses: json['shippingAddresses']
            .map((value) => new Address.fromJson(value))
            .toList());
  }
}

class Address {
  String address, city, state, country, zipcode;

  Address({
    this.address,
    this.city,
    this.state,
    this.country,
    this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return new Address(
        address: json['address'],
        city: json['city'],
        state: json['state'],
        country: json['country'],
        zipcode: json['zipcode']);
  }
}
