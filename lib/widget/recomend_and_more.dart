// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants';

class RecomendedAndMore extends StatelessWidget {
  final String text;
  const RecomendedAndMore({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, bottom: 10, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: kTextColor, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Container(
            alignment: Alignment.center,
            height: 22,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: kPrimaryColor),
            child: const Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
