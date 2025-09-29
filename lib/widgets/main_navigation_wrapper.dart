import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';
import '../screens/home_screen.dart';
import '../screens/emergency_screen.dart';
import '../screens/info_screen.dart';

class MainNavigationWrapper extends StatefulWidget {
  final int initialIndex;
  final Widget? child;

  const MainNavigationWrapper({
    super.key,
    this.initialIndex = 0,
    this.child,
  });

  @override
  State<MainNavigationWrapper> createState() => _MainNavigationWrapperState();
}

class _MainNavigationWrapperState extends State<MainNavigationWrapper> {
  late int _currentIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onBottomNavTap(int index) {
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // If a child is provided, wrap it with bottom navigation
    if (widget.child != null) {
      return Scaffold(
        body: widget.child!,
        bottomNavigationBar: BottomNavigationWidget(
          currentIndex: _currentIndex,
          onTap: _onBottomNavTap,
        ),
      );
    }

    // Otherwise, use PageView for main navigation
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          HomeScreen(),
          EmergencyScreen(),
          InfoScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationWidget(
        currentIndex: _currentIndex,
        onTap: _onBottomNavTap,
      ),
    );
  }
}
