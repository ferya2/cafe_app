import 'package:app_rest/constanst/colors/colors.dart';
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
          padding: const EdgeInsets.only(left: 40),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_outlined),
            iconSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
          )
        ],
        backgroundColor: AppColor.whiteNeutral,
      ),
      body: SingleChildScrollView(
          child: Column(children: [
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
              backgroundColor: AppColor.whiteGradient.withOpacity(0.2),
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
      ])),
    );
  }
}
