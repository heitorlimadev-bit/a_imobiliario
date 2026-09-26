import 'package:flutter/material.dart';

import 'models/model_clientes.dart';

import 'models/enum_status.dart';

import 'Clientes_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    // Cliente fictício para teste
    final cliente = Clientes(
      nome: 'João da Silva',
      cpf: '123.456.789-00',
      telefone: '(11) 98765-4321',
      capital_inicial: 10000,
      financiamento: 5000,
      status: StatusCliente.aprovado,
    );

    return Scaffold(

      // Barra superior
      appBar: AppBar(
        title: const Text('Clientes'),
      ),

      // Conteúdo da página
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Nome do cliente
            Text(
              cliente.nome,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Telefone
            Text(
              cliente.telefone,
            ),

            const SizedBox(height: 20),

            // Botão para testar o cliente
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClientesInfo(cliente: cliente),
                  ),
                );
              },
              child: const Text('Testar cliente'),
            ),
          ],
        ),
      ),
    );
  }
}
