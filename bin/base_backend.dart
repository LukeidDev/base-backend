import 'dart:io';

import 'package:base_backend/base_backend.dart' as base_backend;
import 'package:shelf/shelf_io.dart';
import 'package:shelf/shelf.dart';
import 'package:mysql1/mysql1.dart';

void main(List<String> arguments) async {
  final conn = await MySqlConnection.connect(
    ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'delivery',
      password: '1234',
    ),
  );
  print(await conn.query('select * from tb_permissoes'));

  await serve(
    (request) => Response(
      200,
      body: 'Ola Mundo',
      headers: {'content-type': 'application/json'},
    ),
    'localhost',
    8082,
  );
}
