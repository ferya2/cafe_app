import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:app_rest/view/home/favorite.dart';
import 'package:app_rest/view/home/home.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
            ),

            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 38,
                      backgroundColor: AppColor.whiteGradient,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fery Angriawan',
                          style: AppTextStyle.appBarTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'fery@example.com',
                          style: AppTextStyle.hintTextField,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text('Bandung City', style: AppTextStyle.hintTextField),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(
              'Home',
              style: AppTextStyle.tabBar,
            ),
            onTap: () {
              // Handle Home tap
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite_outline_outlined),
            title: Text(
              'Favorite',
              style: AppTextStyle.tabBar,
            ),
            onTap: () {
              // Handle favorite tap
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FavoritePage();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: Text(
              'History',
              style: AppTextStyle.tabBar,
            ),
            onTap: () {
              // Handle Profile tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_2_outlined),
            title: Text(
              'My Profile',
              style: AppTextStyle.tabBar,
            ),
            onTap: () {
              // Handle Profile tap
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              'Settings',
              style: AppTextStyle.tabBar,
            ),
            onTap: () {
              // Handle Settings tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: Text(
              'Logout',
              style: AppTextStyle.tabBar,
            ),
            onTap: () {
              // Handle Logout tap
            },
          ),
        ],
      ),
    );
  }
}
