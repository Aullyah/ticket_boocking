import 'package:flutter/material.dart';
import 'package:ticket_booking_app/common/themes.dart';
import 'package:ticket_booking_app/view/ui/home_page.dart';
import 'package:ticket_booking_app/view/ui/profil_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // menu
  static const _home = 'Home';
  static const _profil = 'Profile';
  int _bottomNavIndex = 0;

  final _listWidget = [const HomePage(), const ProfilPage()];

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: _bottomNavIndex == 0
                ? Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: accentColor1,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: Wrap(
                      children: [
                        const Icon(
                          Icons.explore_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          _home,
                          style: blackTextFont,
                        ),
                      ],
                    ),
                  )
                : Wrap(
                    children: [
                      Icon(
                        Icons.explore_outlined,
                        color: accentColor1,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        _home,
                        style: blackTextFont.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _bottomNavIndex == 1
                ? Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: accentColor1,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: Wrap(
                      children: [
                        const Icon(
                          Icons.person_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          _profil,
                          style: blackTextFont,
                        ),
                      ],
                    ),
                  )
                : Wrap(
                    children: [
                      Icon(
                        Icons.person_outlined,
                        color: accentColor3,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        _profil,
                        style: blackTextFont.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
            label: '',
          )
        ],
        currentIndex: _bottomNavIndex,
        onTap: _onBottomNavTapped,
      ),
    );
  }
}
