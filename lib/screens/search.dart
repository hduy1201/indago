import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends GetView {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Search Screen')),
    );
  }
}
