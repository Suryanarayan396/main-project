import 'package:flutter/material.dart';
import 'package:mechanic24/ui/screens/home/home_view.dart';
import 'package:mechanic24/view/screens/customer_support_screen/customer_support_screen.dart';

import 'package:mechanic24/view/screens/mybooking_screen/mybooking_screen.dart';
import 'package:mechanic24/view/screens/servicebook_screen/servicebook_screen.dart';
import 'package:stacked/stacked.dart';
import 'bottomnav_viewmodel.dart';

class BottomnavView extends StatefulWidget {
  const BottomnavView({super.key});

  @override
  State<BottomnavView> createState() => _BottomnavViewState();
}

class _BottomnavViewState extends State<BottomnavView> {
  int selectedindex = 0;
  final List<Widget> pages = [
    Homeview(),
    ServicebookScreen(),
    MybookingScreen(),
    CustomerSupportScreen()
  ];
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomnavViewModel>.reactive(
      builder: (context, model, child) {
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
                    icon: Icon(Icons.help_center_outlined),
                    label: "customercare")
              ]),
        );
      },
      viewModelBuilder: () => BottomnavViewModel(),
    );
  }
}
