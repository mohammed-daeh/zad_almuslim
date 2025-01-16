import 'package:get/get.dart';

class UserBottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  final List<String> iconPathsActive = [
    'assets/icons/home_screen.svg',
    'assets/icons/quran.svg',
    'assets/icons/prayer.svg',
    'assets/icons/statistics.svg',
    'assets/icons/settings.svg',
  ];

  final List<String> iconPathsInactive = [
    'assets/icons/home_screen.svg',
    'assets/icons/quran.svg',
    'assets/icons/prayer.svg',
    'assets/icons/statistics.svg',
    'assets/icons/settings.svg',
  ];

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }

  String getActiveIcon(int index) => iconPathsActive[index];
  String getInactiveIcon(int index) => iconPathsInactive[index];
}
