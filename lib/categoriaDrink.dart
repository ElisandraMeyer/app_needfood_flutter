import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/detalhesProduto.dart';

class CategoriaDrink extends StatefulWidget {
  const CategoriaDrink({super.key});

  @override
  State<CategoriaDrink> createState() => _CategoriaDrinkState();
}

class _CategoriaDrinkState extends State<CategoriaDrink> {
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
              child: Text('Categoria Drink',
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
                        nome: 'Refrigerante Coca-Cola - Lata 350ml',
                        valor: '6,00',
                        imagem: 'assets/images/coca_cola.png',
                        descricao:
                            'A Coca-Cola, em sua versão lata de 350ml, é a escolha refrescante perfeita para acompanhar sua refeição. Desfrute da refrescância e do irresistível sabor da Coca-Cola em sua embalagem prática e conveniente de lata de 350ml. Uma experiência deliciosa que complementa qualquer ocasião.',
                      ),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Refrigerante Coca-Cola - Lata 350ml'),
                    trailing: Text('6,00'),
                    leading: Image.asset(
                      'assets/images/coca_cola.png',
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
                        nome: 'Refrigerante de laranja Fanta - Lata 350ml',
                        imagem: 'assets/images/fanta.png',
                        valor: '6,00',
                        descricao:
                            'A Fanta de laranja, em sua versão lata de 350ml, é uma opção refrescante e vibrante. Com seu sabor cítrico e refrescante, essa bebida efervescente proporciona uma explosão de sabor frutado. A lata de 350ml é perfeita para levar onde quiser e desfrutar do sabor intenso e da sensação revigorante da Fanta de laranja. Uma escolha deliciosa para refrescar os dias quentes e adicionar um toque de diversão à sua rotina.',
                      ),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Refrigerante de laranja Fanta - Lata 350ml'),
                    trailing: Text('6,00'),
                    leading: Image.asset('assets/images/fanta.png'),
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
                        nome: 'Água - Garrafa 500ml',
                        imagem: 'assets/images/agua.png',
                        valor: '4,00',
                        descricao:
                            'A água, em sua garrafa de 500ml, é uma opção essencial e refrescante para hidratação diária. Com sua pureza e leveza, essa bebida transparente oferece uma sensação revigorante e natural. A garrafa de 500ml é perfeita para acompanhar suas atividades ao longo do dia, mantendo você hidratado e revitalizado. Uma escolha saudável e indispensável para promover o equilíbrio e bem-estar.',
                      ),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Água - Garrafa 500ml'),
                    trailing: Text('4,00'),
                    leading: Image.asset('assets/images/agua.png'),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
