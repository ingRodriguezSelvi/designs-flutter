import 'package:flutter/material.dart';


class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({super.key});


    @override
    Widget build(BuildContext context){
        return   Scaffold(
            backgroundColor: const Color(0xff30BAD6),
            body: Container(
              decoration: buildBoxDecoration(),
              child: PageView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: const [
                  _PageOne(),
                  _PageTwo(),
                ],
              ),
            )
        );
    }

    BoxDecoration buildBoxDecoration() {
      return const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 0.5],
                colors: <Color>[
                  Color(0xff5EE8C5),
                  Color(0xff30BAD6),
                ],
              ),
            );
    }
}

class _PageOne extends StatelessWidget {
  const _PageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:const [
        // Background
        _Background(),
        // Main content
        _MainContent(),
      ]
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      child: const Image(
          image: AssetImage('assets/scroll-1.png'),
          alignment: Alignment.topCenter
      ),
    );
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          const Text('11 °', style: textStyle),
          const Text('Miércoles', style: textStyle,),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }
}

class _PageTwo extends StatelessWidget {
  const _PageTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color(0xff30BAD6),
      child:  Center(
        child: TextButton(onPressed:(){},
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: const StadiumBorder()
          ),
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text('Bienvenido', style: TextStyle(color: Colors.white,fontSize: 30)
                )
            ),
        ),
      ),
    );
  }
}

