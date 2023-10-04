import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indago/screens/search.dart';
import 'package:indago/screens/setting.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _selectedIndex = 0.obs;

  String listIdToName(int index) {
    if (index == 0) {
      return 'Search';
    } else if (index == 1) {
      return 'Setting';
    } else {
      return 'Search';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          if (_selectedIndex.value == 0) {
            return const SearchScreen();
          } else if (_selectedIndex.value == 1) {
            return const SettingScreen();
          } else {
            return const Center(
              child: Text('Home Page'),
            );
          }
        },
      ),
      bottomNavigationBar: Obx(() => NavigationBar(
            selectedIndex: _selectedIndex.value,
            destinations: const [
              NavigationDestination(
                label: 'Search',
                icon: Icon(Icons.search),
              ),
              NavigationDestination(
                label: 'Setting',
                icon: Icon(Icons.settings),
              ),
            ],
            onDestinationSelected: (index) {
              _selectedIndex.value = index;
            },
          )),
    );
  }
}
