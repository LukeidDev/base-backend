import 'dart:io';

import 'package:base_backend/base_backend.dart' as base_backend;
import 'package:shelf/shelf_io.dart';
import 'package:shelf/shelf.dart';

void main(List<String> arguments) {
  serve(
    (request) => Response(
      200,
      body: 'Ola Mundo',
      headers: {'content-type': 'application/json'},
    ),
    'localhost',
    8080,
  );
}
