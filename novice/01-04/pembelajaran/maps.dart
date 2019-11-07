//Map
import 'dart:collection';

void main(List<String> arg) {
  //initializing map
  Map capital = {
    101: {"indonesia": "jakarta", "asal": "6788"},
    102: {"malaysia": "kuala lumpur", "asal": "6788"},
    103: {"japan": "tokyo", "asal": "6788"},
    104: {"england": "london", "asal": "6788"},
    105: {"germany": "berlin", "asal": "6788"}
  };

//  var showList = capital;
  // print(capital[101]);

  //another way to initialize a map
  Map user = {
    "aku": "jakarta",
    "kamu": "kuala lumput",
    "dia": "tokyo",
    "mereka": "london",
    "kami": "berlin"
  };

  var showUser = user;
  // print(showUser['mereka']);

  //SBY
  //Creating simple maps
  var gifts = {
    //key
    'first': 'patridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var noblesGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // print(gifts);
  // print(noblesGases);

  // create the same objects using a Map constructor:
  var gifts2 = Map();
  gifts2['first'] = 'patridge';
  gifts2['second'] = 'turledoves';
  gifts2['sixth'] = 'golden rings';

  var nobleGases2 = Map();
  nobleGases2[1] = 'helium';
  nobleGases2[13] = 'neon';
  nobleGases2[55] = 'argon';

  print(gifts2);
  print(nobleGases2);

  //add key-value to the map
  gifts2['third'] = 'calling birds';
  // print(gifts2);

  //retfieve a value from a map
  print(gifts2['third']);
  print(gifts2.length);

  //HASH MAP
  var accounts = new HashMap();
  accounts['depts'] = 'HR';
  accounts['name'] = 'Tom';
  accounts['email'] = 'tom@xyz.com';
  // print('Map after adding entries: ${accounts}');
  accounts.addAll({'dept': 'HR', 'email': 'tom@xyz.com'});
  // print('Map after adding  entries :${accounts}');

  //Remove entries from hashMap
  accounts.remove('dept');
  // print('Map after removing  entry :${accounts}');
  accounts.clear();
  // print('Map after clearing entries :${accounts}');

  //HASH SET
  Set numberSet = new HashSet();
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(5);
  numberSet.add(60);
  numberSet.add(70);
  // print("Default implementation :${numberSet.runtimeType}");
  for (var no in numberSet) {
    // print(no);
  }

  // Adding Multiple Values to a HashSet
  // Set numberSet = new  HashSet();
  numberSet.addAll([100, 200, 300]);
  print("Default implementation :${numberSet.runtimeType}");
  for (var no in numberSet) {
    print(no);
  }

  //Implements GENERIC CLASS
  var location1 = new Location<double>(21.271488, -157.822806);
  print(location1);

  var location2 = new Location<String>('21.271488', '-157.822806');
  print(location2);

  var location3 = new Location<int>(21, -157);
  print(location3);
}

//CLASS GENERICS
class Location<E> {
  E lat, lng;

  Location(this.lat, this.lng);

  toString() => "Have you been to ${lat}, ${lng}?";
}
