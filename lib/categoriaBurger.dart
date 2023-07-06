import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/detalhesProduto.dart';

class CategoriaBurger extends StatefulWidget {
  const CategoriaBurger({
    super.key,
  });

  @override
  State<CategoriaBurger> createState() => _CategoriaBurgerState();
}

class _CategoriaBurgerState extends State<CategoriaBurger> {
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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Categoria Burger',
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
                        nome: 'Hambúrguer de carne',
                        imagem: 'assets/images/hamburguer_carne.png',
                        valor: '45,00',
                        descricao:
                            'Nosso hambúrguer de carne é suculento e saboroso, preparado com ingredientes frescos e grelhado na perfeição. Combinando textura crocante, queijo derretido e um molho especial, é uma explosão de sabores em cada mordida. Desfrute de uma experiência gastronômica memorável com nosso hambúrguer de carne.',
                      ),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Hambúrguer de carne'),
                    trailing: Text('45,00'),
                    leading: Image.asset(
                      'assets/images/hamburguer_carne.png',
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
                          nome:
                              'Hambúrguer de carne com batata frita e refrigerante',
                          imagem: 'assets/images/hamburger_batata.png',
                          valor: '80,00',
                          descricao:
                              'Nosso combo de hambúrguer de carne com batata frita e refrigerante é a escolha perfeita para uma refeição completa e saborosa. Delicie-se com um suculento hambúrguer de carne grelhado, acompanhado por batatas fritas crocantes e um refrescante refrigerante. Uma combinação irresistível de sabores que satisfaz os desejos e cria uma experiência gastronômica memorável.')),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text(
                        'Hambúrguer de carne com batata frita e refrigerante'),
                    trailing: Text('80,00'),
                    leading: Image.asset('assets/images/hamburger_batata.png'),
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
                          nome: 'Hambúrguer de carne duplo',
                          imagem: 'assets/images/hamburger_batata.png',
                          valor: '60,00',
                          descricao:
                              'Nosso hambúrguer de carne duplo é uma verdadeira tentação para os amantes de hambúrgueres. Com duas suculentas porções de carne bovina grelhada, o sabor e a saciedade são garantidos. Acompanhado de ingredientes frescos, queijo derretido e nosso molho especial, este hambúrguer é uma explosão de sabores intensos em cada mordida. Uma opção perfeita para os que buscam uma experiência gastronômica robusta e deliciosa.')),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Hambúrguer de carne duplo'),
                    trailing: Text('60,00'),
                    leading: Image.asset('assets/images/hamburger_duplo.png'),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
