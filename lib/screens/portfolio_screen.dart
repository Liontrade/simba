import 'package:flutter/material.dart';
import 'package:simba/screens/settings/settings_screen.dart';
import 'package:simba/style/_style.dart';
import 'package:simba/style/fonts/_fonts_style.dart';
import 'package:simba/widgets/bottom_nav_bar/frosted_glass_bottom_navbar.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Home Page', style: LtTextStyle.manrope40regular)),
    Center(child: Text('Search Page', style: LtTextStyle.manrope40regular)),
    Center(child: Text('Profile Page', style: LtTextStyle.manrope40regular)),
    SettingsScreen(title: 'Menu'),
  ];

  static List<String> _titles = ['Home Page', 'Search Page', 'Profile Page', 'Menu'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
          backgroundColor: Colors.transparent,
          title: Text(_titles[_selectedIndex], style: LtTextStyle.manrope40regular,),
          centerTitle: true,
        ),
        bottomNavigationBar: FrostedGlassBottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
