import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerWidget {
  final PageController _pageController = PageController();
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Text(";"),
          Text(";"),
          Text(";"),
          Text(";"),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: _currentPage,
          builder: (context, pageIndex, child) {
            return BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: "My trips",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  label: "Add trips",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.map),
                  label: "Maps",
                ),
              ],
              onTap: (index) {
                _pageController.jumpToPage(pageIndex);
              },
            );
          }),
    );
  }
}
