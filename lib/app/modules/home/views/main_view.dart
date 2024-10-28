import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/colors.dart';
import '../../profile/views/profile_view.dart';
import '../../settings/views/settings_view.dart';
import '../controllers/home_controller.dart';
import 'home_view.dart';

class HomeView extends GetView<HomeController> {
  final int _selectedIndex = 0;
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsView()),
            );
          }, icon: Icon(Icons.settings),color: secondarycolor,),
          const SizedBox(width: 10),
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileView()),
            );
          }, icon: Icon(Icons.tab),color: secondarycolor,),
        ],
        title: const Text(
          'Good morning',
          style: TextStyle(color: secondarycolor),
        ),
      ),
      body: Center(
        child: Obx(() {
          if (controller.selectedIndex.value == 0) {
            return GridPage();
          } else if (controller.selectedIndex.value == 1) {
            return
              Text('Search Page',
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
