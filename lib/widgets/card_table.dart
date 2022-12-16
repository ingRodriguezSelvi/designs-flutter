import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children:const [
        TableRow(
          children:[
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            )
          ]
        ),
        TableRow(
          children:[
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.shop,
              text: 'Shopping',
            ),
            _SingleCard(
              color: Colors.orange,
              icon: Icons.insert_drive_file,
              text: 'Bills',
            )
          ]
        ),
        TableRow(
          children:[
            _SingleCard(
              color: Colors.blueAccent,
              icon: Icons.movie_filter,
              text: 'Entertainment',
            ),
            _SingleCard(
              color: Colors.green,
              icon: Icons.cloud,
              text: 'Grocery',
            )
          ]
        ),

      ]
    );
  }
}


class _SingleCard extends StatelessWidget {
  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35,
                  child: Icon(icon, color: Colors.white, size: 30),
                ),
                const SizedBox(height: 10),
                Text(text, style: TextStyle(color: color, fontSize: 18)),
              ]
            );
    return _CardBackGround(child: column);
  }
}

class _CardBackGround extends StatelessWidget {
  const _CardBackGround({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            width: 170,
            height: 190,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}


