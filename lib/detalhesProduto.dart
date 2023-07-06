import 'package:flutter/material.dart';
import 'package:flutter_application_1/carrinho.dart';
import 'package:flutter_application_1/favoritos.dart';

class DetalhesProduto extends StatefulWidget {
  String nome;
  String imagem;
  String descricao;
  String valor;

  DetalhesProduto(
      {super.key,
      required this.nome,
      required this.imagem,
      required this.descricao,
      required this.valor});

  @override
  State<DetalhesProduto> createState() => _DetalhesProdutoState();
}

class _DetalhesProdutoState extends State<DetalhesProduto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NeedFood'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.imagem,
                width: 400,
                height: 400,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  widget.nome,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  widget.valor,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  widget.descricao,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Carrinho(nome: widget.nome, imagem: widget.imagem, valor: widget.valor,),
                      ));
                },
                child: Text('Adicionar ao Carrinho'),
              ),
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Favoritos(nome: widget.nome, imagem: widget.imagem),
                      ));
                },
                child: Text('Adicionar aos Favoritos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
