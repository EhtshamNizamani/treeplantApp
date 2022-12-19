// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:plant_tree_app_ui/constants';
import 'package:plant_tree_app_ui/screens/details_screen.dart';

class RecomendedListView extends StatelessWidget {
  final String image;
  final String name;
  final String countryName;
  final int price;
  const RecomendedListView({
    Key? key,
    required this.image,
    required this.name,
    required this.countryName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ProductsDetailsScreen())),
      child: Container(
        margin: const EdgeInsets.only(
            top: kDefaultPadding / 2,
            left: kDefaultPadding,
            bottom: kDefaultPadding),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        offset: Offset(0, 2),
                        color: Colors.black)
                  ]),
              child: ListTile(
                  title: Text(
                    name,
                    style: const TextStyle(
                        color: kTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    countryName,
                    style: const TextStyle(
                        color: kPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    '\$$price',
                    style: const TextStyle(
                        color: kPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
