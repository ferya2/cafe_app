import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteGradient,
        automaticallyImplyLeading: false,
        // leading: Padding(
        //     padding: const EdgeInsets.only(left: 20),
        //     child: IconButton(
        //       onPressed: () {},
        //       icon: const Icon(Icons.arrow_back_ios_outlined),
        //       iconSize: 20,
        //     )
        //     ),
        title: Text(
          'My Profile',
          style: AppTextStyle.appBarTextStyle,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColor.whiteGradient,
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 50),
          Text(
            'Information',
            style: AppTextStyle.appBarTextStyle,
          ),
          const SizedBox(height: 20),
          Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.whiteNeutral,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  )),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor.withOpacity(0.6),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              )),
                          child: Image.asset('images/png/spiderman.png'),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ade Fery Angriawan',
                            style: AppTextStyle.appBarTextStyle,
                          ),
                          Text(
                            'fery@gmail.com',
                            style: AppTextStyle.hintTextField,
                          ),
                          Text(
                            'Kota Bandung, Jawa Barat',
                            style: AppTextStyle.hintTextField,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )),
          const SizedBox(height: 40),
          Text(
            'Payment Method',
            style: AppTextStyle.appBarTextStyle,
          ),
          const SizedBox(height: 20),
          Container(
            height: 266,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColor.whiteNeutral,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                )),
            child: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
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
                              height: 55,
                              width: 60,
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
                    const Divider(
                      thickness: 1,
                      indent: 70,
                      endIndent: 25,
                    ),
                    ListTile(
                        leading: Radio(
                          value: 3,
                          groupValue: 1,
                          onChanged: (value) {
                            value;
                          },
                        ),
                        title: Row(
                          children: [
                            Container(
                              height: 55,
                              width: 60,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 28, 6, 223),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  )),
                              child: const Image(
                                  image:
                                      AssetImage('images/png/cib_paypal.png')),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'Paypall',
                              style: AppTextStyle.appBarTextStyle2,
                            ),
                          ],
                        )),
                  ]),
            ),
          )
        ]),
      ),
      bottomNavigationBar: TextButton(
          onPressed: () {},
          child: Text(
            'Save',
            style: AppTextStyle.hintTextField,
          )),
    );
  }
}
