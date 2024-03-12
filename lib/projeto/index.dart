import 'package:carrinho_de_compras/widgets/container.dart';
import 'package:carrinho_de_compras/widgets/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarinhoCompras extends StatelessWidget {
  const CarinhoCompras({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 125, 133, 243),
          elevation: 20,
          title: const Text('Carrinho de Compras'),
        ),
        drawer: Drawer(
          child: ListView(
            children: ListMenu.get(context),
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 30, 0, 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                children: [
                  Text(
                    'Carrinho do',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Maytton',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  )
                ],
              ),
              SizedBox(
                height: 400,
                child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      card(
                          img: 'assets/images/livro.png',
                          nome: 'Livro',
                          valor: '10'),
                      card(
                          img: 'assets/images/calculadora.png',
                          nome: 'Calculadora',
                          valor: '5,99'),
                      card(
                          img: 'assets/images/lapis.png',
                          nome: 'Lápis',
                          valor: '1,99'),
                      card(
                          img: 'assets/images/macbook.png',
                          nome: 'MacBook',
                          valor: '2999,99'),
                      card(
                          img: 'assets/images/xicara.png',
                          nome: 'Xicara',
                          valor: '25,50'),
                      card(
                          img: 'assets/images/iphone.png',
                          nome: 'Iphone 13',
                          valor: '2599,00')
                    ]),
              ),
              SizedBox(
                width: 250,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 179, 139, 211))),
                  child: const Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

Widget card(
    {required String img, required String nome, required String valor}) {
  return Container(
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(img),
        Text(
          nome,
          style: const TextStyle(
            color: Color.fromARGB(255, 5, 5, 5),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'R\$$valor',
          style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        )
      ],
    ),
  );
}
