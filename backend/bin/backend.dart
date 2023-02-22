import 'dart:developer';
import 'dart:io';

import 'package:backend/backend.dart' as backend;

void main(List<String> arguments) {
  log('Hello world: ${backend.calculate()}!');
  stdin.readLineSync();
}
