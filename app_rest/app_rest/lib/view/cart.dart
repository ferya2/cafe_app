import 'package:app_rest/constanst/bottomnav/bottomnavbar.dart';
import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

int _count = 1;
int _price = 30000;

class _CartPageState extends State<CartPage> {
  void incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (_count > 1) {
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteGradient,
      appBar: AppBar(
        backgroundColor: AppColor.whiteGradient,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          iconSize: 20,
        ),
        title: Text(
          "Cart",
          style: AppTextStyle.appBarTextStyle,
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.swipe_left_outlined, color: Colors.black),
                  const SizedBox(width: 10),
                  Text('Swipe on the left to remove an item',
                      style: AppTextStyle.hintSwipe),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      // dragStartBehavior: DragStartBehavior.down,
                      // confirmDismiss: (DismissDirection direction) async {
                      //   return true;
                      // },
                      key: UniqueKey(),
                      onDismissed: (direction) {},
                      direction: DismissDirection.endToStart,

                      background: Container(
                        color: AppColor.whiteGradient,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  backgroundColor: AppColor.primaryColor,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.favorite_outline_outlined),
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor: AppColor.primaryColor,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.delete_outline_outlined),
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.greyNeutral.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 4),
                                )
                              ],
                              color: AppColor.whiteNeutral,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.14,
                            width: double.infinity,
                            margin: const EdgeInsets.only(bottom: 16),
                            child: Row(
                              children: [
                                const SizedBox(width: 8),
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/png/vege.png'),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'IDR. ${(_price * _count)}',
                                          style: AppTextStyle.subtitle2,
                                        ),
                                        const SizedBox(width: 15),
                                        Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: AppColor.whiteGradient,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(20.0),
                                              )),
                                          child: Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  decrementCounter();
                                                },
                                                icon: const Icon(Icons.remove),
                                                color: AppColor.greyNeutral,
                                                iconSize: 18,
                                              ),
                                              Text('$_count',
                                                  style:
                                                      AppTextStyle.subtitle2),
                                              IconButton(
                                                onPressed: () {
                                                  incrementCounter();
                                                },
                                                icon: const Icon(Icons.add),
                                                color: AppColor.greyNeutral,
                                                iconSize: 18,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8), // Jarak antara item
                        ],
                      ),
                    );
                  },
                ),
              ),
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
                return const BottomNavBar();
              }));
            },
            child: Text(
              'Complete Order',
              style: AppTextStyle.btnSign,
            ),
          ),
        ),
      ),
    );
  }
}
