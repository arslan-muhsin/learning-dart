// Import own package
/*
import 'package:imports_1/imports_1.dart' as my_library;

void main(List<String> arguments) {
  print('Hello world: ${my_library.calculate()}!');
  my_library.SayHi();
}
*/

// Dart package
/*
import 'dart:convert';

void main(List<String>arguments){
  var myMessage = 'Hello World';

  // Encoded
  var byteListOfMessage = Utf8Encoder().convert(myMessage);
  var encodedMessage = base64Encode(byteListOfMessage);

  // Decoded
  var byteListOfEncodedMessage = base64Decode(encodedMessage);
  var decodedMessage = Utf8Decoder().convert(byteListOfEncodedMessage);

  print('Encoded: $encodedMessage');
  print('Decoded: $decodedMessage');
}
*/

// Pub Package
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  var url = Uri.parse('https://demo.api-platform.com/books');

  var response = await http.get(url);

  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}
