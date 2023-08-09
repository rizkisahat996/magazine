import 'package:flutter/material.dart';
import 'package:majalah_app/screens/discover_screen.dart';
import 'package:majalah_app/screens/home/home_screen.dart';
import 'package:majalah_app/screens/subs_order/subs_order_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
          icon: Container(
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: const Icon(Icons.home),
            ),
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, DiscoverScreen.routeName);
            },
            icon: const Icon(Icons.search),
          ),
          label: 'Cari',
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SubsOrderScreen.routeName);
              },
              icon: const Icon(Icons.account_balance_wallet),
            ),
          ),
          label: 'Berlangganan',
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.support_agent),
            ),
          ),
          label: 'Hubungi Kami',
        ),
      ],
    );
  }
}
