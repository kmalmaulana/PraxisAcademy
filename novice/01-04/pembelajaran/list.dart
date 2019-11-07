void main() {
  //Deklarasi variabel list
  var list = [1, 2, 3];
  assert(list.length == 3); //Panjang list adalah 3 ?
  assert(list[1] == 2); //list index ke-1 adalah 2
  // print(list);

  list[1] = 1; //reasign the value index ke-1 menjadi 1
  assert(list[1] == 1);
  // print(list);

  //adding spread operator '(...)' to insert element list to another list
  var listA = [1, 2, 3];
  var listA2 = [0, ...listA]; //add in the back
  assert(listA2.length == 4);
  // print(listA2);

  var listA3 = [...listA, 9]; //add in the front
  // print(listA3);

  //Null-aware spread operator (...?) AVOID NULL
  var listC;
  var listC2 = [0, ...?listC];
  assert(listC2.length == 1);

  //Collection if
  var promoActive = false;
  var nav = ['home', 'furniture', 'plants', if (promoActive == true) 'outlet'];
  // print(nav);
  assert(promoActive == false);

  //Collection for to manipulate the items of a list before add to another list
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
