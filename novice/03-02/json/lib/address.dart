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
