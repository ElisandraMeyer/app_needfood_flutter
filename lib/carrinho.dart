import 'package:flutter/material.dart';

class Item {
  final String nome;
  final String imagem;
  final String valor;
  int quantidade;

  Item(
      {required this.nome,
      required this.imagem,
      required this.valor,
      this.quantidade = 1});
}

List<Item> itens = [];

class Carrinho extends StatefulWidget {
  final String nome;
  final String imagem;
  final String valor;

  const Carrinho(
      {Key? key, required this.nome, required this.imagem, required this.valor})
      : super(key: key);

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  @override
  Widget build(BuildContext context) {
    if (widget.nome != '' && widget.imagem != '' && widget.valor != '') {
      int index = itens.indexWhere((item) => item.nome == widget.nome);
      if (index != -1) {
        itens[index].quantidade++;
      } else {
        itens.add(Item(
            nome: widget.nome, imagem: widget.imagem, valor: widget.valor));
      }
    }

    double valorTotal = 0.0;

    for (var item in itens) {
      double valorItem = double.parse(item.valor.replaceAll(",", "."));
      valorTotal += valorItem * item.quantidade;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NeedFood',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: itens.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == itens.length) {
            return ListTile(
              title: Text('Valor Total:'),
              trailing: Text(valorTotal.toStringAsFixed(2)),
            );
          }

          return ListTile(
            leading: Image.asset(
              itens[index].imagem,
              width: 50,
              height: 50,
            ),
            title: Text(itens[index].nome),
            subtitle: Text('Quantidade: ${itens[index].quantidade}'),
            trailing: Text(itens[index].valor),
          );
        },
      ),
    );
  }
}
