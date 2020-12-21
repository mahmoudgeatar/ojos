import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ojos/style/colors.dart';

import 'custemText.dart';

class CategoryHeader extends StatelessWidget {
  String text;
  CategoryHeader({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.5, bottom: 11.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustemText(
            tColor: mainDark,
            size: 12,
            text: text,
            fontWeight: FontWeight.bold,
          ),
          Row(
            children: [
              CustemText(
                tColor: hintGrey,
                size: 10,
                text: "عرض الكل",
                fontWeight: FontWeight.normal,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: mainDark,
                size: 12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
