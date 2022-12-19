// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideIcon extends StatelessWidget {
  final String icon;
  final VoidCallback? navigation;
  const SideIcon({
    Key? key,
    this.navigation,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: IconButton(
          onPressed: navigation,
          icon: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
