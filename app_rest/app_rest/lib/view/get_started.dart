import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:app_rest/view/login.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Container(
        color: AppColor.primaryColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: CircleAvatar(
                backgroundColor: AppColor.whiteNeutral,
                radius: 34,
                child: const Image(image: AssetImage('images/png/logo.png')),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Text(
                'Food for Everyone',
                style: AppTextStyle.getStarted,
              ),
            ),
            const SizedBox(height: 5),
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Positioned(
                  right: 0,
                  child: Image.asset(
                    'images/png/toyface2.png',
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 200,
                    color: AppColor.primaryColor.withOpacity(0.5),
                    colorBlendMode: BlendMode.hue,
                  ),
                ),
                Image.asset(
                  'images/png/toyface1.png',
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: AppColor.primaryColor.withOpacity(0.1),
                  colorBlendMode: BlendMode.hue,
                ),
                ClipRect(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 0, // Sesuaikan tinggi gradien
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            AppColor.primaryColor.withOpacity(0.0),
                            AppColor.primaryColor,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.075,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            child: Text('Get Started', style: AppTextStyle.subtitle),
          ),
        ),
      ),
    );
  }
}
