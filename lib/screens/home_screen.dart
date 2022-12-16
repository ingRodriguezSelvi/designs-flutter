import 'package:designs/widgets/custom_button_navigation.dart';
import 'package:designs/widgets/page_title.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/card_table.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Stack(
              children: const [
                Background(),
                // Main content
                _HomeBody(),
            ]
            ),
          bottomNavigationBar: const CustomButtonNavigationBar(),
        );
    }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PageTitle(),

          // Cards
          CardTable(),
        ],
      ),
    );
  }
}

