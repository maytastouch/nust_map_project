import 'package:flutter/material.dart';
import 'package:nust/screens/applicationInfo.dart';
import 'package:nust/screens/financialInfo.dart';
import 'package:nust/screens/homeScreen.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nust/screens/registrationInfo.dart';
import 'package:nust/screens/schoolLeavingInfo.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  //initilize index
  int _selectedIndex = 0;

  final List _pages = [
    const HomeScreen(),
    const ApplicationInfo(),
    const FinancialInfo(),
    const RegistrationInfo(),
    const SchoolLeavingInfo()
  ];

  //method to select index
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _selectedPage,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black12,
        selectedItemColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:
                Icon(_selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1
                ? IconlyBold.calendar
                : IconlyLight.calendar),
            label: "Application",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2
                ? IconlyBold.moreSquare
                : IconlyLight.moreSquare),
            label: "Financial",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3
                ? IconlyBold.paper
                : IconlyLight.paperNegative),
            label: "Registration",
          ),
          BottomNavigationBarItem(
            icon:
                Icon(_selectedIndex == 4 ? IconlyBold.edit : IconlyLight.edit),
            label: "Leaving",
          ),
        ],
      ),
    );
  }
}
