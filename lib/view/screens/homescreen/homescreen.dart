import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    image: DecorationImage(image: NetworkImage(""))),
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
  }
}
