import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteGradient,
        automaticallyImplyLeading: false,
        title: Text(
          'Favorite',
          style: AppTextStyle.appBarTextStyle,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColor.whiteGradient,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  'your wishlist',
                  style: AppTextStyle.subtitle2,
                )),
            const SizedBox(
              height: 20,
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: AppColor.whiteNeutral,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        )),
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: double.infinity,
                    child: Row(children: [
                      const SizedBox(width: 8),
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/png/vege.png'),
                        radius: 45,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            'Veggie tomato mix',
                            style: AppTextStyle.nameProduct,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Rp. 60.000',
                            style: AppTextStyle.subtitle,
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                    ])),
                const SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        color: AppColor.whiteNeutral,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        )),
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: double.infinity,
                    child: Row(children: [
                      const SizedBox(width: 8),
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/png/vege.png'),
                        radius: 45,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            'Veggie tomato mix',
                            style: AppTextStyle.nameProduct,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Rp. 60.000',
                            style: AppTextStyle.subtitle,
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                    ])),
                const SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        color: AppColor.whiteNeutral,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        )),
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: double.infinity,
                    child: Row(children: [
                      const SizedBox(width: 8),
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/png/vege.png'),
                        radius: 45,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            'Veggie tomato mix',
                            style: AppTextStyle.nameProduct,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Rp. 60.000',
                            style: AppTextStyle.subtitle,
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                    ])),
                const SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        color: AppColor.whiteNeutral,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        )),
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: double.infinity,
                    child: Row(children: [
                      const SizedBox(width: 8),
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/png/vege.png'),
                        radius: 45,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            'Veggie tomato mix',
                            style: AppTextStyle.nameProduct,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Rp. 60.000',
                            style: AppTextStyle.subtitle,
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                    ])),
                const SizedBox(height: 30),
                Container(
                    decoration: BoxDecoration(
                        color: AppColor.whiteNeutral,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        )),
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: double.infinity,
                    child: Row(children: [
                      const SizedBox(width: 8),
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/png/vege.png'),
                        radius: 45,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            'Veggie tomato mix',
                            style: AppTextStyle.nameProduct,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Rp. 60.000',
                            style: AppTextStyle.subtitle,
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                    ]))
              ],
            )
          ],
        ),
      )),
    );
  }
}
