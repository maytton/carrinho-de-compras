import 'package:carrinho_de_compras/projeto/index.dart';
import 'package:carrinho_de_compras/widgets/aliment.dart';
import 'package:carrinho_de_compras/widgets/container.dart';
import 'package:flutter/material.dart';

class ListMenu {
  ListMenu._();

  static List<Widget> get(BuildContext context) {
    return [
      const UserAccountsDrawerHeader(
        accountName: Text('Maytton Nascimento'),
        accountEmail: Text('maytton7@gmail.com'),
        currentAccountPicture: CircleAvatar(
          child: Text('MN'),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const CarinhoCompras()),
          );
        },
        child: const Text('Carrinho de Compras'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const ContainerView()),
          );
        },
        child: const Text('Rastrear Pedido'),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const AlimentView()),
          );
        },
        child: const Text('Pagamentos'),
      )
    ];
  }
}
