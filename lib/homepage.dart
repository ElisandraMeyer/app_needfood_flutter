import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/carrinho.dart';
import 'package:flutter_application_1/categoriaBurger.dart';
import 'package:flutter_application_1/categoriaDrink.dart';
import 'package:flutter_application_1/categoriaPizza.dart';
import 'package:flutter_application_1/detalhesProduto.dart';
import 'package:flutter_application_1/favoritos.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double _sliderValue = 0.0;

class _HomePageState extends State<HomePage> {
  int _indiceAtual = 0;
  final List<Widget> _pages = [
    PaginaPrincipal(),
    Favoritos(nome: '', imagem: ''),
    Carrinho(
      nome: '',
      imagem: '',
      valor: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (index) {
          setState(() {
            _indiceAtual = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
          ),
        ],
      ),
    );
  }
}

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NeedFood',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              FractionallySizedBox(
                widthFactor: 0.8,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    'assets/images/NeedFOOD.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Categorias',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Caprasimo',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriaBurger(),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/burger.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Burger',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriaDrink(),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/cafe.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Drink',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriaPizza(),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/pizza.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Pizza',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Mais pedidos',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Caprasimo',
                      ),
                    ),
                  ),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetalhesProduto(
                            nome: 'Beef Burger',
                            imagem: 'assets/images/beef_burger.png',
                            valor: '40,00',
                            descricao:
                                'Nosso beef burger é uma explosão de sabor e suculência. Preparado com carne bovina de alta qualidade, grelhada na perfeição e temperada com especiarias selecionadas, cada mordida é uma experiência deliciosa. Com um pão macio e levemente tostado, acompanhado de ingredientes frescos e um molho especial, nosso beef burger é uma combinação irresistível de texturas esabores. Desfrute de um hambúrguer suculento e satisfatório que certamente vai satisfazer seu apetite.',
                          ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/beef_burger.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Beef Burger',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '40,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
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
                            nome: 'Pizza Fruit',
                            imagem: 'assets/images/pizza_fruit.png',
                            valor: '65,00',
                            descricao:
                                'Nossa pizza fruit é uma combinação perfeita entre o sabor salgado e o toque doce das frutas frescas. Com uma massa fina e crocante, coberta com molho de tomate artesanal e uma generosa quantidade de queijo derretido, essa pizza é uma explosão de sabores. As frutas frescas, como abacaxi, kiwi e morango, adicionam um toque refrescante e uma dimensão única ao sabor. Desfrute dessa pizza única e saborosa, que une o melhor dos mundos salgado e doce em cada fatia.',
                          ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/pizza_fruit.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Pizza Fruit',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '65,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
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
                            nome: 'Sandwich',
                            imagem: 'assets/images/sandwich.png',
                            valor: '15,00',
                            descricao:
                                'Nosso sanduíche é uma opção deliciosa e versátil para uma refeição rápida e satisfatória. Preparado com pão fresco e macio, ele é recheado com uma combinação de ingredientes saborosos, como queijo derretido, alface fresca, tomate suculento e uma seleção de molhos deliciosos. Cada mordida é uma explosão de sabores e texturas, oferecendo uma experiência de sanduíche única e satisfatória. Desfrute de um sanduíche incrível que vai satisfazer seu apetite em qualquer hora do dia.',
                          ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/sandwich.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Sandwich',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '15,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
