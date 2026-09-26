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
<<<<<<< HEAD

      // Conteúdo da tela
      body: Padding(
        padding: const EdgeInsets.all(20),
=======
      iconTheme: const IconThemeData(color: Colors.white), // essa é a setinha de voltar pra tela de contatos

      body: Padding( // chat sugeriu trocar para singlechildscroll view, mantive o padding
        padding: const EdgeInsets.all(20), // cria um espaçoo de 20 pixels em volta
>>>>>>> 37d80aece5c0b980695831330e36e3a089d5fd6e

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

<<<<<<< HEAD
            // Nome do cliente
=======



          children: //tudo que for dentro da coluna da fichinha do cliente [
            const CircleAvatar(
              radius: 42,
              backgroundColor: Color(0xFF00C853),
            ),
            const SizedBox(height: 14),



>>>>>>> 37d80aece5c0b980695831330e36e3a089d5fd6e
            Text(
              cliente['nome'] ?? '',
              style: const TextStyle(
<<<<<<< HEAD
                color: Colors.white,
                fontSize: 25,
=======
                fontSize: 22,
>>>>>>> 37d80aece5c0b980695831330e36e3a089d5fd6e
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

<<<<<<< HEAD
            // Telefone
            Text(
              'Telefone: ${cliente['telefone']}',
              style: const TextStyle(
                color: Colors.white,
              ),
=======
            Text(
              cliente['telefone'] ?? '',
              style: const TextStyle(color: Colors.grey),
>>>>>>> 37d80aece5c0b980695831330e36e3a089d5fd6e
            ),

            const SizedBox(height: 10),

<<<<<<< HEAD
            // E-mail
            Text(
              'Email: ${cliente['email']}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
=======
          // CRIAÇÃO DO BADGE
          Container(  // CAIXINHA VERDE ARREDONDADA com o texto (documentos pendentes)
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF00C853),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Documentos pendentes',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
>>>>>>> 37d80aece5c0b980695831330e36e3a089d5fd6e

            const SizedBox(height: 30),

<<<<<<< HEAD
            // CPF
            Text(
              'CPF: ${cliente['cpf']}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
=======
          // DADOS PESSOAIS LOGO ABAIXO
          const Align(
            alignment: Alignment.centerLeft, //titulo alinhado a esquerda
            child: Text(
              'Dados pessoais',
              style: TextStyle(color: Colors.white70, fontSize: 15),
            ),
          ),
          const SizedBox(height: 10),
>>>>>>> 37d80aece5c0b980695831330e36e3a089d5fd6e

        // CHAMA A FUNÇÃO _linha  PARA MOSTRAR CADA DADO OBTIDO DE OUTRA TELA
          _linha('CPF', cliente['cpf']),
          _linha('Data de nascimento', cliente['dataNascimento']),
          _linha('Estado civil', cliente['estadoCivil']),
          _linha('Renda mensal', cliente['rendaMensal']),

<<<<<<< HEAD
            // Endereço
            Text(
              'Endereço: ${cliente['endereco']}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
=======
          const SizedBox(height: 24),

          // FINANCIAMENTO ABAIXO
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Financiamento',
              style: TextStyle(color: Colors.white70, fontSize: 15),
            ),
          ),
          const SizedBox(height: 10),

        // Botão verde (destacado)
        _botao('Ver etapas de financiamento', true),
        _botao('Histórico de etapas', false),
        _botao('Anotações', false),
        _botao('Compartilhar cliente', false),
>>>>>>> 37d80aece5c0b980695831330e36e3a089d5fd6e
          ],
        ),
      ),
    );
  }
<<<<<<< HEAD
}

=======
<<<<<<< HEAD

  // LINHA DE INFORMAÇÃO ESTÁTICA
  widget _Linha(String titulo, dynamic valor) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF1B263B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '$titulo ${valor ?? '-'}',
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }

  // BOTÃO QUE NÃO FAZ NADA, DE AÇÃO
  widget _botao(String texto, bool destaque) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: destaque ? const Color(0xFF00695C) ? const Color(0xFF1B263B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              texto,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.white54, size 20),
        ],
      ),
    );
  }
=======
  
    ),
  
}


>>>>>>> 250109a6395a9bab93fcd2dbaaa866f313a1e4f7
>>>>>>> 37d80aece5c0b980695831330e36e3a089d5fd6e
