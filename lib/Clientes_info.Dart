import 'package:flutter/material.dart';
import 'Clientes.dart';

class ClientesInfo extends StatelessWidget {
   final Map<String, dynamic> cliente; // Vai receber o map de outro arquivo e mostrar a ficha
   
    const ClientesInfo({
       super.key, //identificação interna do flutter
        required this.cliente,
      }); // quando uma pessoa criar a tela, é obrigatório entregar um cliente para ela

  @override // substituir uma função que o flutter já espera que eu faça
  Widget build(BuildContext context) { //montar a tela
    return Scaffold( // estrutura básica da tela
      backgroundColor: const Color(0xFF0B1426), // veja se pode remover essa porra depois
      appBar: AppBar( //barrinha superior, oposto do nav
        backgroundColor: const Color(0XFF0B1426),
        elevation: 0,
        title: Text(cliente['nome']),
          'Perfil do cliente',
          style: const TextStyle(color: Colors.white),
      ),
      iconTheme: const IconThemeData(color: Colors.white),

      body: Padding( // chat sugeriu trocar para singlechildscroll view, mantive
        padding: const EdgeInsets.all(20), // cria um espaçoo de 20 pixels em volta

        child: Column( // coloca elementos um embaixo do outro
          crossAxisAlignment: CrossAxisAlignment.start, // coloca textos começando pela esquerda





          children: //tudo que for dentro da coluna da fichinh [
            Text(
              cliente['nome'],
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20), // cria espaço vazio entre nome e tel

            Text('Telefone: ${cliente['telefone']}'),

            const SizedBox(height: 10),

            Text('Email: ${cliente['email']}'),

            const SizedBox(height: 10),

            Text('CPF: ${cliente['cpf']}'),

            const SizedBox(height: 10),

            Text('Endereço: ${cliente['endereco']}')
          ],
        ),
      ),
    );
  }