import 'package:carrinho_de_compras/widgets/list.dart';
import 'package:flutter/material.dart';

class AlimentView extends StatelessWidget {
  const AlimentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: ListMenu.get(context),
        ),
      ),
      body: const Center(
        child: Text(
          'Teste Aba Pagamentos',
          style: TextStyle(fontSize: 45),
        ),
      ),
    );
  }
}
