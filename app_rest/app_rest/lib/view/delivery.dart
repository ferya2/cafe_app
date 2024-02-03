// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:app_rest/view/home.dart';
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
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
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
              ]),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColor.whiteNeutral,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Marvis Kprabo',
                            style: AppTextStyle.appBarTextStyle),
                        Divider(
                          color: AppColor.greyNeutral,
                          thickness: 0.5,
                          height: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Km 5 refinery road oppsite republic road, effurun, delta state',
                            overflow: TextOverflow.clip,
                            style: AppTextStyle.appBarTextStyle2),
                        const SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: AppColor.greyNeutral,
                          thickness: 0.5,
                          height: 10,
                        ),
                        Text('+234 9011039271',
                            style: AppTextStyle.appBarTextStyle2),
                      ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Delivery Method',
                style: AppTextStyle.appBarTextStyle,
              ),
              const SizedBox(height: 16),
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColor.whiteNeutral.withOpacity(0.8),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16.0),
                    )),
                child: ListView(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  children: [
                    ListTile(
                        leading: Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: (value) {},
                        ),
                        title: Row(
                          children: [
                            const SizedBox(width: 20),
                            Text(
                              'Door delivery',
                              style: AppTextStyle.appBarTextStyle2,
                            ),
                          ],
                        )),
                    const Divider(
                      thickness: 1,
                      indent: 70,
                      endIndent: 25,
                    ),
                    ListTile(
                        leading: Radio(
                          value: 2,
                          groupValue: 1,
                          onChanged: (value) {},
                        ),
                        title: Row(
                          children: [
                            const SizedBox(width: 20),
                            Text(
                              'Pick up',
                              style: AppTextStyle.appBarTextStyle2,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 88),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: AppTextStyle.appBarTextStyle2,
                  ),
                  Text(
                    '23,000',
                    style: AppTextStyle.nameTittleCenter,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: SizedBox(
          height: 65,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: AppColor.primaryColor,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
            child: Text(
              'Proceed to Payment',
              style: AppTextStyle.btnSign,
            ),
          ),
        ),
      ),
    );
  }
}
