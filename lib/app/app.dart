import 'package:mechanic24/ui/screens/bottomnav_view/bottomnav_view.dart';
import 'package:mechanic24/ui/screens/login%20and%20signup/login_signup.dart';

import 'package:mechanic24/ui/screens/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../services/api_service.dart';
import '../ui/screens/splash/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(
      page: Homeview,
    ),
    MaterialRoute(
      page: BottomnavView,
    ),
    MaterialRoute(page: LoginSignup),
  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
  ],
)
class AppSetup {}
