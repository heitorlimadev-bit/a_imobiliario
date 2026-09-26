import 'package:flutter/material.dart';

import 'imoveis.dart';
import 'clientes.dart';
import 'cliente_info.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const ImoveisScreen(),
        '//': (context) => const ClientesScreen(),
        '///': (context) => const HomePage(),
      },
    ),
  );
}