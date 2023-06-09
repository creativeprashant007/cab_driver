import 'package:cab_driver/constants/brand_colors.dart';
import 'package:cab_driver/tabs/earnings_tab.dart';
import 'package:cab_driver/tabs/home_tab.dart';
import 'package:cab_driver/tabs/profile_tab.dart';
import 'package:cab_driver/tabs/rating_tab.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class MainPage extends StatefulWidget {
  static const String id = "main-page";
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          HomeTab(),
          EarningTab(),
          RatingTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTap,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(OMIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(OMIcons.creditCard), label: 'Earnings'),
          BottomNavigationBarItem(icon: Icon(OMIcons.star), label: 'Ratings'),
          BottomNavigationBarItem(icon: Icon(OMIcons.person), label: 'Account'),
        ],
        unselectedItemColor: BrandColors.colorIcon,
        selectedItemColor: BrandColors.colorOrange,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 12),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
