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
      iconTheme: const IconThemeData(color: Colors.white), // essa é a setinha de voltar pra tela de contatos

      body: Padding( // chat sugeriu trocar para singlechildscroll view, mantive o padding
        padding: const EdgeInsets.all(20), // cria um espaçoo de 20 pixels em volta

        child: Column( // coloca elementos um embaixo do outro
          crossAxisAlignment: CrossAxisAlignment.start, // coloca textos começando pela esquerda





          children: //tudo que for dentro da coluna da fichinha do cliente [
            const CircleAvatar(
              radius: 42,
              backgroundColor: Color(0xFF00C853),
            ),
            const SizedBox(height: 14),



            Text(
              cliente['nome'] ?? '',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20), // cria espaço vazio entre nome e tel

            Text(
              cliente['telefone'] ?? '',
              style: const TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 10),

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

            const SizedBox(height: 30),

          // DADOS PESSOAIS LOGO ABAIXO
          const Align(
            alignment: Alignment.centerLeft, //titulo alinhado a esquerda
            child: Text(
              'Dados pessoais',
              style: TextStyle(color: Colors.white70, fontSize: 15),
            ),
          ),
          const SizedBox(height: 10),

        // CHAMA A FUNÇÃO _linha  PARA MOSTRAR CADA DADO OBTIDO DE OUTRA TELA
          _linha('CPF', cliente['cpf']),
          _linha('Data de nascimento', cliente['dataNascimento']),
          _linha('Estado civil', cliente['estadoCivil']),
          _linha('Renda mensal', cliente['rendaMensal']),

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
          ],
        ),
      ),
    );
  }

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