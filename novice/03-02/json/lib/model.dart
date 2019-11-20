// import 'package:flutter/services.dart';

class Sample {
  String name;
  int age;

  Sample({this.name, this.age});

  @override
  String toString() {
    return 'Sample{name: $name, age: $age}';
  }

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(name: json["name"], age: json["age"]);
  }
}
