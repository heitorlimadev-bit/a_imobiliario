import  'package:flutter/material.dart';
import  'models/model_clientes.dart';
import  'models/enum_status.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Pesquisar...',
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
          ),
        ),
      ),
      body: Center(
        child: Text('Conteudo da página inicial'),
      ),
    );
  }
}