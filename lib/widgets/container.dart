import 'package:carrinho_de_compras/widgets/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(80),
        padding: const EdgeInsets.only(top: 50, bottom: 20, left: 50),
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          color: Color.fromARGB(137, 211, 177, 243),
        ),
        child: const Text('Teste Aba Rastreio Pedidos'),
      ),
    );
  }
}
