main() {
  // Main function where code executed
  showUserInfo();
}

showUserInfo() {
  //Create Function
  var firstName =
      'Akmal'; //Declare and inisiate variable without specfiying data type
  var lastName = 'Maulana';
  String city =
      'Yogyakarta'; //Declare and inisiate variable with specifying data type
  String blood = 'B';
  int age = 25;
  var heightUser = 177;
  int weight = 48;

  print(//also function
      'Name = $firstName $lastName, City = $city, Blood = $blood, Age = $age, Height = $heightUser, Weight = $weight');

  var one = int.parse('1');
  assert(one == 1);
  print(one);

  listting();
}

listting() {
  var list = [1, 2, 3];
  print(list);
}
