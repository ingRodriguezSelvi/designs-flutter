import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});


    @override
    Widget build(BuildContext context){
        return  Scaffold(
            body: Column(
              children:   [
                const Image(image: AssetImage('assets/landscape.jpg')),

                // Title
                const _Title(),

                // Button Section
                const _ButtonSection(),

                // Description
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', textAlign: TextAlign.justify),

                ),
              ],
            ),
        );
    }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(

        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Escapada a la montaña', style: TextStyle( fontWeight: FontWeight.bold)),
              Text('Lago con un puente', style: TextStyle( color: Colors.black54)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ]
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          _BuildButtonColumn(Colors.blue, Icons.call, 'CALL'),
          _BuildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
          _BuildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
        ],
      ),
    );
  }
}

class _BuildButtonColumn extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;

  const _BuildButtonColumn(
      this.color,
      this.icon,
      this.label
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color, size: 30),
        Text(label, style: TextStyle(color: color)),
      ],
    );
  }
}