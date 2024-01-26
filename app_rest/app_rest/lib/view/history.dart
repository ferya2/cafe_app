import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteGradient,
        automaticallyImplyLeading: false,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 20),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.arrow_back_ios_outlined),
        //     iconSize: 20,
        //   ),
        // ),
        title: Text(
          'History',
          style: AppTextStyle.appBarTextStyle,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColor.whiteGradient,
      body: Center(
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              const SizedBox(height: 20),
              SvgPicture.asset('images/svg/history.svg'),
              const SizedBox(height: 20),
              Text(
                'No History yet',
                style: AppTextStyle.nameTittleCenter,
              ),
              const SizedBox(height: 20),
              Text(
                'Hit the orange button down \n  below to Create an order',
                style: AppTextStyle.nameSubCenter,
              )
            ])),
      ),
    );
  }
}
