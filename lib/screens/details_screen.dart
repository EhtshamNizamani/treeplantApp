import 'package:flutter/material.dart';
import 'package:plant_tree_app_ui/widget/body.dart';

class ProductsDetailsScreen extends StatelessWidget {
  static const nameRoute = '/products_deetails_screen';
  const ProductsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color.fromARGB(255, 221, 221, 221),
          ],
        ),
      ),
      child: const Body(),
    ));
  }
}
