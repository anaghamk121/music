import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  int _selectedIndex = 0;
  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.settings,
            color: secondarycolor,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.tab,
            color: secondarycolor,
          )
        ],
        title: const Text(
          'Good morning',
          style: TextStyle(color: secondarycolor),
        ),
      ),
      body: Center(
        child: Obx(() {
          if (controller.selectedIndex.value == 0) {
            return
              //HomeView();
              Text('Home Page',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold));

          } else if (controller.selectedIndex.value == 1) {
            return Text('Search Page',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold));
          } else {
            return Text('Library',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold));
          }
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_music,
                ),
                label: 'Library')
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: iconcolor,
          selectedItemColor: secondarycolor,
          onTap: (index) {
            controller.updateIndex(index);
          }),
    );
  }
}
