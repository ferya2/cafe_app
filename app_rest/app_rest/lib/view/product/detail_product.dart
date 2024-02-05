import 'package:app_rest/constanst/bottomnav/bottomnavbar.dart';
import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:app_rest/view/home/favorite.dart';
import 'package:app_rest/view/home/home.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

int _currentImageIndex = 0;
bool _isFavorite = false;

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
              onPressed: () {
                // Toggle status favorit saat ikon diklik
                setState(() {
                  _isFavorite = !_isFavorite;
                });
              },
              icon: Icon(
                _isFavorite
                    ? Icons
                        .favorite_outlined // Jika favorit, tampilkan ikon love berwarna
                    : Icons
                        .favorite_border_outlined, // Jika tidak favorit, tampilkan ikon love default
                color: _isFavorite
                    ? AppColor.primaryColor // Warna love berwarna favorit
                    : null, // Warna default ikon love
              ),
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
                      child: CarouselSlider(
                        options: CarouselOptions(
                            height: MediaQuery.of(context).size.height * 0.35,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 680),
                            viewportFraction: 0.9,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentImageIndex = index;
                              });
                            }),
                        items: [
                          'images/png/vege7.jpg',
                          'images/png/vege4.jpg',
                          'images/png/vege.png',
                          'images/png/vege5.jpg',
                          'images/png/vege6.jpg',
                        ].map((imagePath) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(imagePath),
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5, // Jumlah gambar dalam Carousel
                      (index) => Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentImageIndex == index
                              ? AppColor.primaryColor
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Veggie Tomato Mix',
                      style: AppTextStyle.nameTittleCenter),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('IDR. 30.000', style: AppTextStyle.priceProduct),
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
                backgroundColor: AppColor.primaryColor,
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
