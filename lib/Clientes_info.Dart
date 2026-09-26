void main() {
  runApp(


import 'package:flutter/material.dart';
import 'Clientes.dart';

class ClientesInfo extends StatelessWidget {
   final Map<String, dynamic> cliente;
   
    const ClientesInfo({
       super.key,
        required this.cliente,
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Cliente['nome']),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              cliente['nome'],
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Text('Telefone: ${cliente['telefone']}'),

            const SizedBox(height: 10),

            Text('Email: ${cliente['telefone']}'),

            const SizedBox(height: 10),

            Text('CPF: ${cliente['cpf']}'),

            const SizedBox(height: 10),

            Text('Endereço: ${cliente['endereco']}')
          ],
        ),
      ),
    );
  }
  
    ),
  
}


