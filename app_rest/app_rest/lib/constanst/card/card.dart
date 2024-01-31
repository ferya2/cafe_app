import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:flutter/material.dart';

Widget buildContainerCard() {
  return Container(
    height: 500,
    width: 200,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: AppColor.greyNeutral.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 20,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
      color: Colors.white,
      borderRadius: const BorderRadius.all(
        Radius.circular(30.0),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          backgroundColor: AppColor.greyNeutral.withOpacity(0.3),
          radius: 64,
          backgroundImage: const Image(
            image: AssetImage('images/png/vege.png'),
            fit: BoxFit.fill,
          ).image,
        ),
        const SizedBox(height: 15),
        Text(
          '   Veggie \ntomato mix',
          style: AppTextStyle.nameProduct,
          overflow: TextOverflow.clip,
        ),
        const SizedBox(
          height: 14,
        ),
        Text('Rp. 60.000', style: AppTextStyle.subtitle2),
        const SizedBox(
          height: 24,
        ),
      ],
    ),
  );
}
