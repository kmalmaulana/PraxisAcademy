// import 'dart:async';

import 'dart:io';

//Form of input/output processing that permits
// other processing to continue before the transmission
// has finished.
//so we put async modifier to main
// because we gonna use asynchronous in it
void main() async {
//so here we put await modifier before we call the function that mean "go ahead, don't wait we"
//   await hello();
//   print('all done');

// //here is the function that we gonna run asynchronously
// //again put async modifier before the curly bracket{}
//   void hello() async {
//     await print('magic happen here');
//   }

  print('Start program');

  printFileContent();

  print('Program end...');

  // proccess1();
  // proccess2();
  // proccess3();
}

printFileContent() async {
  await showFile();
  // print('The content of file is $fileContent');
}

Future<String> downloadAFile() {
  Future<String> result = Future.delayed(Duration(seconds: 9), () {
    return 'My secret file';
  });
  return result;
}

showFile() async {
  print('this is the file');
}

void proccess1() {
  // print('Updating WhatsApp... ');
  // print('Updating WhatsApp2... ');
  // print('Updating WhatsApp3... ');
  sleep(new Duration(seconds: 3));
  print('WhatsApp Update is Finish!');
}

void proccess2() async {
  // sleep(new Duration(seconds: 2));
  print('Udpating Youtube... ');
  Future.delayed(Duration(seconds: 10), () {
    // print('Execute proccess2... ');
    print('Youtube Update is Finish!');
  });
}

void proccess3() {
  // sleep(new Duration(seconds: 2));
  print('Updating Instagram... ');
  sleep(new Duration(seconds: 3));
  print('Instagram Update is Finish');
}
