/*
import 'dart:io';

void main(List<String> arguments) {
  var path = '/';
  var dir = Directory(path);

  if(dir.existsSync()){
    print('Directory is exists.');
  }
  else{
    print('Directory was not found.');
  }
}
*/

// System temp directory
/*
import 'dart:io';

void main(List<String> arguments){
  var dir = Directory.systemTemp.createTempSync();

  print(dir.path);

  if(dir.existsSync()){
    print('Removing ${dir.path}');
    dir.deleteSync();
  }
  else{
    print('Could not find ${dir.path}');
  }
}
*/

// Listing files in folder
/*
import 'dart:io';

void main(List<String> arguments) {
  var dir = Directory.current;
  print(dir.path);

  List<FileSystemEntity> list = dir.listSync(recursive: true);
  print('Entries in list: ${list.length}');

  for (var value in list) {
    var stat = value.statSync();

    print('Path: ${value.path}');
    print('Type: ${stat.type}');
    print('Changed: ${stat.changed}');
    print('Modified: ${stat.modified}');
    print('Accessed: ${stat.accessed}');
    print('Mode: ${stat.mode}');
    print('Size: ${stat.size}');
    print('\n');
  }
}
*/

// Accessing Files
import 'dart:io';

void main(List<String> arguments) {
  var dir = Directory.current;
  var file = File('${dir.path}/my-file.txt');

  writeFile(file);
  readFile(file);
  deleteFile(file);
}

void writeFile(File file) {
  RandomAccessFile raf = file.openSync(mode: FileMode.append);
  raf.writeStringSync('Hello world! This is my first file.');
  raf.flushSync();
  raf.closeSync();
}

void readFile(File file) {
  if (!file.existsSync()) {
    print('File was not found!');
    return;
  }

  print('Reading as string');
  print(file.readAsStringSync());
  print('\n');

  print('Reading as byte');
  var fileByteArray = file.readAsBytesSync();

  for (var element in fileByteArray) {
    print(element);
  }
}

void deleteFile(File file){
  if(!file.existsSync()){
    print('File was not found!');
    return;
  }

  print('File is deleting...');
  file.deleteSync();
}
