// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteGradient,
      appBar: AppBar(
        backgroundColor: AppColor.whiteGradient,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            iconSize: 20,
          ),
        ),
        title: Text("Checkout", style: AppTextStyle.appBarTextStyle),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text('Delivery', style: AppTextStyle.titlePayment),
              const SizedBox(
                height: 16,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('Address details', style: AppTextStyle.appBarTextStyle),
                Text(
                  'change',
                  style: AppTextStyle.changeDelivery,
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
