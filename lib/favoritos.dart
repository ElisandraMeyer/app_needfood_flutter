import 'package:flutter/material.dart';

class Item {
  final String nome;
  final String imagem;

  Item({required this.nome, required this.imagem});
}

List<Item> itens = [];

class Favoritos extends StatefulWidget {
  final String nome;
  final String imagem;

  const Favoritos({super.key, required this.nome, required this.imagem});

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    if (widget.nome != '' && widget.imagem != '') {
      itens.add(Item(nome: widget.nome, imagem: widget.imagem));
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
            itemCount: itens.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.asset(
                  itens[index].imagem,
                  width: 50,
                  height: 50,
                ),
                title: Text(itens[index].nome),
              );
            }));
  }
}
