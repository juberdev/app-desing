import 'package:flutter/material.dart';

class CustonButtonNavigation extends StatelessWidget {
  const CustonButtonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 2,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline_outlined),
          label: 'grafica',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: 'usuario',
        ),
      ],
    );
  }
}
