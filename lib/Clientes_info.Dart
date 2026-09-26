import 'package:flutter/material.dart';

class ClientesInfo extends StatelessWidget {
  // Cliente recebido de outra tela
  final Map<String, dynamic> cliente;

  // Construtor
  const ClientesInfo({
    super.key,
    required this.cliente,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Cor de fundo da tela
      backgroundColor: const Color(0xFF0B1426),

      // Barra superior
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1426),
        elevation: 0,

        // Título da barra
        title: const Text(
          'Perfil do cliente',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        // Cor dos ícones da barra
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      // Conteúdo da tela
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // Nome do cliente
            Text(
              cliente['nome'],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Telefone
            Text(
              'Telefone: ${cliente['telefone']}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            // E-mail
            Text(
              'Email: ${cliente['email']}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            // CPF
            Text(
              'CPF: ${cliente['cpf']}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            // Endereço
            Text(
              'Endereço: ${cliente['endereco']}',
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

