import 'package:flutter/material.dart';
import 'dart:ui';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              texto: 'General',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              texto: 'Tramport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              texto: 'General',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              texto: 'Tramport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              texto: 'General',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              texto: 'Tramport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              texto: 'General',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              texto: 'Tramport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              texto: 'General',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              texto: 'Tramport',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String texto;

  const _SingleCard({
    super.key,
    required this.icon,
    required this.color,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            // margin: const EdgeInsets.all(15),
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 67, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  texto,
                  style: TextStyle(
                    color: color,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
