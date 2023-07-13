import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double cont1Height = 10;
  double cont2Height = 10;
  double cont3Height = 10;
  double cont4Height = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Container(
          height: 600,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      curve: Curves.fastEaseInToSlowEaseOut,
                      duration: Duration(seconds: 1),
                      color: Colors.red,
                      width: 10,
                      height: cont1Height,
                    ),
                    AnimatedContainer(
                      curve: Curves.fastEaseInToSlowEaseOut,
                      duration: Duration(seconds: 1),
                      color: Colors.red,
                      width: 10,
                      height: cont2Height,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedContainer(
                      curve: Curves.fastEaseInToSlowEaseOut,
                      duration: Duration(seconds: 1),
                      color: Colors.red,
                      width: cont3Height,
                      height: 10,
                    ),
                    AnimatedContainer(
                      curve: Curves.fastEaseInToSlowEaseOut,
                      duration: Duration(seconds: 1),
                      color: Colors.red,
                      width: 10,
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            cont1Height = 590;
            
             cont3Height = 320;

            cont2Height = 590;
          });
        },
        label: const Text('Animate'),
      ),
    );
  }
}
