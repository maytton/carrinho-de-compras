import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarinhoCompras extends StatelessWidget {
  const CarinhoCompras({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 20,
        title: const Text('Carrinho de Compras'),
      ),
    );
  }
}
