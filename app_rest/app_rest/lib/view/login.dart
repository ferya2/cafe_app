import 'package:app_rest/constanst/bottomnav/bottomnavbar.dart';
import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:app_rest/view/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    // Setiap kali tab berubah, perbarui tampilan
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.whiteNeutral,
      ),
      body: Container(
        color: AppColor.whiteGradient,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColor.whiteNeutral,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(55.0),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('images/png/Logol.png')),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.053,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TabBar(
                          controller: _tabController,
                          tabs: [
                            Tab(text: 'Sign In'),
                            Tab(text: 'Sign Up'),
                          ],
                          onTap: (index) {
                            // Di sini, Anda dapat menggunakan nilai indeks yang dipilih
                          },
                          dividerHeight: 0,
                          labelStyle: AppTextStyle.tabBar,
                          labelColor: AppColor
                              .primaryColor, // Warna teks tab yang aktif
                          indicatorColor:
                              AppColor.primaryColor, // Warna indikator tab
                        ),
                        // Isi untuk setiap tab
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Isi tab "Sign In"
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email Addres',
                            style: AppTextStyle.textFieldname,
                          ),
                          TextField(
                            style: AppTextStyle.inputanTextField,
                            decoration: InputDecoration(
                              hintText: 'fill with your email',
                              hintStyle: AppTextStyle.hintTextField,
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.primaryColor),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            'Password',
                            style: AppTextStyle.textFieldname,
                          ),
                          TextField(
                            style: AppTextStyle.inputanTextField,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'fill with your password',
                              hintStyle: AppTextStyle.hintTextField,
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.primaryColor),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            'Forgot passcode ?',
                            style: TextStyle(color: AppColor.primaryColor),
                          ),
                        ]),
                  ),
                  // Isi tab "Sign Up"
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email Addres',
                            style: AppTextStyle.textFieldname,
                          ),
                          TextField(
                            style: AppTextStyle.inputanTextField,
                            decoration: InputDecoration(
                              hintText: 'fill with email',
                              hintStyle: AppTextStyle.hintTextField,
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.primaryColor),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            'Password',
                            style: AppTextStyle.textFieldname,
                          ),
                          TextField(
                            style: AppTextStyle.inputanTextField,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'fill with password',
                              hintStyle: AppTextStyle.hintTextField,
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.primaryColor),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            'Confirm Password',
                            style: AppTextStyle.textFieldname,
                          ),
                          TextField(
                            style: AppTextStyle.inputanTextField,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'type again your password',
                              hintStyle: AppTextStyle.hintTextField,
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.primaryColor),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColor.whiteGradient,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(40.0),
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: AppColor.primaryColor),
            onPressed: () {
              // Logika untuk button "Sign In" di sini
              if (_tabController.index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavBar()),
                );
                print('Sign In button pressed');
              } else if (_tabController.index == 1) {
                print('Sign Up button pressed');
              }
            },
            child: Text(
              _tabController.index == 0 ? 'Sign In' : 'Sign Up',
              style: AppTextStyle.btnSign,
            ),
          ),
        ),
      ),
    );
  }
}
