import 'package:flutter/material.dart';
import 'package:mechanic24/view/screens/customer_support_screen/customer_support_screen.dart';
import 'package:mechanic24/view/screens/homescreen/homescreen.dart';
import 'package:mechanic24/view/screens/mybooking_screen/mybooking_screen.dart';
import 'package:mechanic24/view/screens/servicebook_screen/servicebook_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedindex = 0;
  final List<Widget> pages = [
    Homescreen(),
    ServicebookScreen(),
    MybookingScreen(),
    CustomerSupportScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.design_services), label: "Service book"),
            BottomNavigationBarItem(
                icon: Icon(Icons.book), label: "My booking"),
            BottomNavigationBarItem(
                icon: Icon(Icons.help_center_outlined), label: "customercare")
          ]),
    );
  }
}
