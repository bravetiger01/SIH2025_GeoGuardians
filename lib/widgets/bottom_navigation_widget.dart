import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/house.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 0 ? Colors.black : Colors.grey,
              BlendMode.srcIn,
            ),
            width: 18,
            height: 18,
          ),
          activeIcon: SvgPicture.asset(
            'assets/svgs/house.svg',
            colorFilter: const ColorFilter.mode(
              Colors.black,
              BlendMode.srcIn,
            ),
            width: 18,
            height: 18,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/sos.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 1 ? Colors.black : Colors.grey,
              BlendMode.srcIn,
            ),
            width: 12,
            height: 12,
          ),
          activeIcon: SvgPicture.asset(
            'assets/svgs/sos.svg',
            colorFilter: const ColorFilter.mode(
              Colors.black,
              BlendMode.srcIn,
            ),
            width: 12,
            height: 12,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/digital_wellbeing.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 2 ? Colors.black : Colors.grey,
              BlendMode.srcIn,
            ),
            width: 18,
            height: 18,
          ),
          activeIcon: SvgPicture.asset(
            'assets/svgs/digital_wellbeing.svg',
            colorFilter: const ColorFilter.mode(
              Colors.black,
              BlendMode.srcIn,
            ),
            width: 18,
            height: 18,
          ),
          label: '',
        ),
      ],
    );
  }
}