import 'package:flutter/material.dart';
import 'package:plant_tree_app_ui/widget/side_icons.dart';

import '../constants';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  SideIcon(
                    navigation: () => Navigator.pop(context),
                    icon: 'assets/icons/back_arrow.svg',
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const SideIcon(
                    icon: 'assets/icons/sun.svg',
                  ),
                  const SideIcon(
                    icon: 'assets/icons/icon_2.svg',
                  ),
                  const SideIcon(
                    icon: 'assets/icons/icon_3.svg',
                  ),
                  const SideIcon(
                    icon: 'assets/icons/icon_4.svg',
                  ),
                ],
              )),
              Container(
                width: size.width * .75,
                height: size.height * 0.8,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 50,
                        spreadRadius: 16,
                        offset: const Offset(10, 0),
                        color: kPrimaryColor.withOpacity(0.4)),
                  ],
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(50)),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/img.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: ListTile(
              title: Text(
                'Angelica',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              subtitle: Text(
                'Pakistan',
                style: TextStyle(color: kPrimaryColor, fontSize: 14),
              ),
              trailing: Text(
                '\$3900',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
