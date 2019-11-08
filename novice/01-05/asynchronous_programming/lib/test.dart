// import 'dart:io';
import 'dart:async';

void main() async {
  print('Start program');

  printFileContent();

  print('Program end...');
}

printFileContent() async {
  String fileContent = await downloadAFile();
  print('The content of file is $fileContent');
}

Future<String> downloadAFile() {
  Future<String> result = Future.delayed(Duration(seconds: 9), () {
    return showFile();
  });
  return result;
}

showFile() async {
  print('this is the file');
}
