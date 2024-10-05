import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "overlay text",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
              SizedBox(height: 20)
            ],
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
