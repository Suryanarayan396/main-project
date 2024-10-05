import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';

import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
              child: Assets.images.logo
                  .image(height: 155, width: 155, fit: BoxFit.fill)),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
