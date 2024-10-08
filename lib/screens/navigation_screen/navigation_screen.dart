import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:simba/screens/news/news_screen.dart';
import 'package:simba/screens/portfolio/portfolio_screen.dart';
import 'package:simba/screens/settings/settings_screen.dart';
import 'package:simba/screens/stocks/stocks_screen.dart';
import 'package:simba/style/_style.dart';
import 'package:simba/widgets/bottom_nav_bar/frosted_glass_bottom_navbar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;

  static final List<String> _titles = ['Portfolio', 'Stocks', 'Profile Page', 'Menu'];

  final List<Widget> _pages = [
    const PortfolioScreen(),
    const StocksPage(),
    const NewsPage(),
    const SettingsScreen(
      title: 'Menu',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LtGradient.whiteToYellow,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text(
            _titles[_selectedIndex],
            style: LtTextStyle.manrope40regular,
          ),
          centerTitle: true,
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: FrostedGlassBottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
