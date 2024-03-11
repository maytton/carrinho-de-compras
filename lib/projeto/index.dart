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
          color: Color.fromARGB(255, 221, 205, 230),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                children: [
                  Text(
                    'CARRINHO DO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'MAYTTON',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
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
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  children: List.generate(
                      9,
                      (index) => Container(
                            color: Colors.white,
                          )),
                ),
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
