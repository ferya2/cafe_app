import 'package:app_rest/constanst/bottomnav/bottomnavbar.dart';
import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:app_rest/view/favorite.dart';
import 'package:app_rest/view/home.dart';
import 'package:flutter/material.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_outlined),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
          )
        ],
        backgroundColor: AppColor.whiteNeutral,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColor.whiteNeutral,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.whiteNeutral.withOpacity(0.6),
                              spreadRadius: 6,
                              blurRadius: 7,
                            )
                          ]),
                      child: CircleAvatar(
                        backgroundColor:
                            AppColor.whiteGradient.withOpacity(0.2),
                        child: Image(
                          image: AssetImage('images/png/vege2.png'),
                          height: MediaQuery.of(context).size.height * 0.25,
                          color: AppColor.whiteNeutral.withOpacity(1),
                          colorBlendMode: BlendMode.multiply,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Veggie Tomato Mix',
                      style: AppTextStyle.nameTittleCenter),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Rp. 30.000', style: AppTextStyle.priceProduct),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Delivery Info',
                style: AppTextStyle.nameProduct,
              ),
              const SizedBox(height: 4),
              Text(
                'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm ',
                style: AppTextStyle.hintTextField,
              ),
              const SizedBox(height: 24),
              Text(
                'Return policy',
                style: AppTextStyle.nameProduct,
              ),
              const SizedBox(height: 4),
              Text(
                'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately. lorem ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: AppTextStyle.hintTextField,
                overflow: TextOverflow.clip,
              )
            ])),
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
                primary: AppColor.primaryColor,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const BottomNavBar();
                }));
              },
              child: Text(
                'Add to Cart',
                style: AppTextStyle.btnSign,
              ),
            ),
          )),
    );
  }
}
