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
        elevation: 50,
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Maytton Nascimento'),
              accountEmail: Text('maytton7@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('MN'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
