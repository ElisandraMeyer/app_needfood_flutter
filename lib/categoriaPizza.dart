import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/detalhesProduto.dart';

class CategoriaPizza extends StatefulWidget {
  const CategoriaPizza({super.key});

  @override
  State<CategoriaPizza> createState() => _CategoriaPizzaState();
}

class _CategoriaPizzaState extends State<CategoriaPizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('NeedFood'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Categoria Pizza',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Caprasimo',
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesProduto(
                        nome: 'Pizza sabor Frango com Requeijão',
                        valor: '65,00',
                        imagem: 'assets/images/pizza_frango.png',
                        descricao:
                            'Pizza de frango com requeijão é uma deliciosa combinação de sabores. A massa crocante é coberta com suculentos pedaços de frango, queijo requeijão cremoso e temperos aromáticos. Cada mordida é uma explosão de sabor que vai te deixar com água na boca.',
                      ),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Pizza sabor Frango com Requeijão'),
                    trailing: Text('65,00'),
                    leading: Image.asset(
                      'assets/images/pizza_frango.png',
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesProduto(
                        nome: 'Pizza sabor Pepperoni',
                        valor: '60,00',
                        imagem: 'assets/images/pizza_pepperoni.png',
                        descricao:
                            'Pizza de pepperoni é um clássico irresistível. A massa fina e crocante é generosamente coberta com fatias de pepperoni, que derretem e ficam levemente crocantes ao assar. O sabor picante do pepperoni combina perfeitamente com o molho de tomate e o queijo derretido, criando uma experiência de sabor inesquecível em cada mordida.',
                      ),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Pizza sabor Pepperoni'),
                    trailing: Text('60,00'),
                    leading: Image.asset('assets/images/pizza_pepperoni.png'),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesProduto(
                        nome: 'Pizza vegetariana',
                        valor: '60,00',
                        imagem: 'assets/images/pizza_vegetariana.png',
                        descricao:
                            'Pizza vegetariana é uma opção saudável e repleta de sabores. A massa leve e crocante é coberta com uma variedade de ingredientes frescos, como tomate, cogumelos, pimentão, cebola e azeitonas. O toque especial fica por conta do queijo derretido e dos temperos aromáticos. Uma explosão de cores e sabores que agrada a todos, mesmo os não vegetarianos.',
                      ),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Pizza vegetariana '),
                    trailing: Text('60,00'),
                    leading: Image.asset('assets/images/pizza_vegetariana.png'),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
