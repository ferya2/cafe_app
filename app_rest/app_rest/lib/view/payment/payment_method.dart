import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:app_rest/view/payment/delivery.dart';
import 'package:flutter/material.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(
          "Checkout",
          style: AppTextStyle.appBarTextStyle,
        ),
        centerTitle: true,
        actions: const [],
      ),
      backgroundColor: AppColor.whiteGradient,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Payment',
                style: AppTextStyle.titlePayment,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Payment Method',
                style: AppTextStyle.appBarTextStyle,
              ),
              const SizedBox(height: 16),
              Container(
                height: 200,
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
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: AppColor.primaryColor.withOpacity(0.8),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  )),
                              child: Icon(
                                Icons.credit_card,
                                color: AppColor.whiteNeutral,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'Card',
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
                            Container(
                              height: 55,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.8),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  )),
                              child: Icon(
                                Icons.account_balance_outlined,
                                color: AppColor.whiteNeutral,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'Bank Account',
                              style: AppTextStyle.appBarTextStyle2,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 26),
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
              const SizedBox(height: 30),
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
                return const DeliveryPage();
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
