//Set in dart s an unordered collection of unique items
main() {
  //Creating Sets
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iondine', 'astatine'};
  // print(halogens);

  var meteor = {2, 4, 5, 6, 7};
  // print(meteor);

  //Create empty sets
  var names = <String>{};
  Set<String> namess = {};

  //add items to an existing set using the add() and addAll()
  // cant'set multiple data type
  var elements = <String>{};
  elements.add('flourine');
  // print(elements);
  elements.addAll(halogens);
  // print(elements);
  // print(elements.length);
}
