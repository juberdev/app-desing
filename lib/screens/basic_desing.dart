import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            image: AssetImage('assets/fondo01.jpg'),
          ),
          const Title(),
          const ButtonSection(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text(
                'mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto mucho texto  mucho texto mucho texto mucho texto mucho texto '),
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButon(
            icon: Icons.call,
            texto: 'CALL',
          ),
          CustomButon(
            icon: Icons.map,
            texto: 'ROUTE',
          ),
          CustomButon(
            icon: Icons.share,
            texto: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButon extends StatelessWidget {
  final IconData icon;
  final String texto;

  const CustomButon({super.key, required this.icon, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.lightBlue,
          size: 30,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          texto,
          style: const TextStyle(
            color: Colors.lightBlue,
          ),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'data del titulo mas largo xd',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'data del subtitulo',
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}
