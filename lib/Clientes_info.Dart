import 'package:flutter/material.dart';

import 'models/model_clientes.dart';

class ClientesInfo extends StatelessWidget {
  // Recebe um único objeto Cliente
  final Clientes cliente;

  // Construtor
  const ClientesInfo({
    super.key,
    required this.cliente,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Fundo da página
      backgroundColor: const Color(0xFF0B1426),

      // Barra superior
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1426),
        elevation: 0,

        title: const Text(
          'Perfil do cliente',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        // Cor do botão voltar
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      // Informações do cliente
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // Nome
            Text(
              cliente.nome,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Telefone
            Text(
              'Telefone: ${cliente.telefone}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            // CPF
            Text(
              'CPF: ${cliente.cpf}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}