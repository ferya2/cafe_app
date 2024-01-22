import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

late TabController _tabControllerHome;

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabControllerHome = TabController(length: 4, vsync: this);
    _tabControllerHome.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    // Setiap kali tab berubah, perbarui tampilan
    setState(() {});
  }

  @override
  void dispose() {
    _tabControllerHome.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColor.whiteGradient,
        title: Padding(
          padding: const EdgeInsets.only(left: 14, right: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('images/svg/Vector.svg')),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
          ]),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: AppColor.whiteGradient,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Delicious \nfood for you',
            style: AppTextStyle.tiitleHome,
          ),
          const SizedBox(height: 28),
          TextField(
            style: AppTextStyle.inputanTextField,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                hintStyle: AppTextStyle.hintTextField,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                )),
          ),
          const SizedBox(height: 20),
          TabBar(
              dividerHeight: 0,
              labelStyle: AppTextStyle.tabBar,
              labelColor: AppColor.primaryColor, // Warna teks tab yang aktif
              indicatorColor: AppColor.primaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.zero,
              onTap: (index) {
                print(_tabControllerHome.index);
              },
              controller: _tabControllerHome,
              tabs: [
                Tab(text: 'Foods'),
                Tab(text: 'Drinks'),
                Tab(
                  text: 'Snacks',
                ),
                Tab(
                  text: 'Sauces',
                ),
              ]),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'See More',
              style: AppTextStyle.subtitle2,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              GridView.count(
                childAspectRatio: 0.58,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                // Tambahkan padding untuk jarak di sekitar GridView
                mainAxisSpacing:
                    16.0, // Tambahkan spacing vertical di antara elemen GridView
                crossAxisSpacing: 16.0, //
                children: List.generate(
                  6, // Ganti sesuai dengan jumlah elemen yang Anda inginkan
                  (index) => buildContainerCard(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
        ]),
      )),
    );
  }
}

Widget buildContainerCard() {
  return Container(
    height: 500,
    width: 200,
    decoration: BoxDecoration(
      color: AppColor.whiteNeutral,
      borderRadius: const BorderRadius.all(
        Radius.circular(30.0),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          backgroundColor: AppColor.greyNeutral.withOpacity(0.3),
          radius: 64,
          backgroundImage: const Image(
            image: AssetImage('images/png/vege.png'),
            fit: BoxFit.fill,
          ).image,
        ),
        const SizedBox(height: 15),
        Text(
          '   Veggie \ntomato mix',
          style: AppTextStyle.nameProduct,
          overflow: TextOverflow.clip,
        ),
        const SizedBox(
          height: 14,
        ),
        Text('Rp. 60.000', style: AppTextStyle.subtitle2),
        const SizedBox(
          height: 24,
        ),
      ],
    ),
  );
}
