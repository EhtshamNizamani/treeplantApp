import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_tree_app_ui/constants';
import 'package:plant_tree_app_ui/widget/feature_products.dart';
import 'package:plant_tree_app_ui/widget/recomend_and_more.dart';
import 'package:plant_tree_app_ui/widget/recomended_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 206, 209, 212),
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/menu.svg',
              )),
        ),
        body: SingleChildScrollView(
            child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
              // It will cover 20% of our total height
              height: size.height * 0.2,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hi Uishopy!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                      Image.asset(
                        'assets/images/logo.png',
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/icons/search.svg',
                              ),
                            ),
                            hintText: 'Search here',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                const RecomendedAndMore(text: 'Recomended'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      RecomendedListView(
                          image: 'assets/images/image_1.png',
                          name: 'MENETHIA',
                          countryName: 'Pakistan',
                          price: 159),
                      RecomendedListView(
                          image: 'assets/images/image_2.png',
                          name: 'SUPIRA',
                          countryName: 'Pakistan',
                          price: 459),
                      RecomendedListView(
                          image: 'assets/images/image_3.png',
                          name: 'LOTHERIA',
                          countryName: 'Pakistan',
                          price: 359),
                    ],
                  ),
                ),
                const RecomendedAndMore(text: 'Featured Plants'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      FeaturedProducts(
                        image: 'assets/images/bottom_img_1.png',
                      ),
                      FeaturedProducts(
                        image: 'assets/images/bottom_img_2.png',
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
