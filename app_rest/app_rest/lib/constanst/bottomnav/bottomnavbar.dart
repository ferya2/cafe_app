import 'package:app_rest/constanst/colors/colors.dart';
import 'package:app_rest/constanst/textstyles/textstyle.dart';
import 'package:app_rest/view/favorite.dart';
import 'package:app_rest/view/history.dart';
import 'package:app_rest/view/home.dart';
import 'package:app_rest/view/profile.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final screen = [
    const HomePage(),
    const FavoritePage(),
    const ProfilePage(),
    const HistoryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 60,
        child: ClipRRect(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(height: 0),
            unselectedLabelStyle: const TextStyle(height: 0),
            selectedFontSize: 10,
            backgroundColor: AppColor.whiteGradient,
            unselectedFontSize: 10,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: AppColor.primaryColor,
            unselectedItemColor: AppColor.greyNeutral,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: _selectedIndex == 0
                        ? [
                            BoxShadow(
                              color: AppColor.primaryColor.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ]
                        : [],
                  ),
                  child: const Icon(Icons.home, size: 24),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: _selectedIndex == 1
                        ? [
                            BoxShadow(
                              color: AppColor.primaryColor.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ]
                        : [],
                  ),
                  child: const Icon(Icons.favorite_border_outlined, size: 24),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: _selectedIndex == 2
                        ? [
                            BoxShadow(
                              color: AppColor.primaryColor.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ]
                        : [],
                  ),
                  child: const Icon(Icons.person_2_outlined, size: 24),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: _selectedIndex == 3
                        ? [
                            BoxShadow(
                              color: AppColor.primaryColor.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ]
                        : [],
                  ),
                  child: const Icon(Icons.history_sharp, size: 24),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
