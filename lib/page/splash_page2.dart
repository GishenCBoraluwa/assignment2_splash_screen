import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SpalahPage2 extends StatelessWidget {
  const SpalahPage2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Image.asset(
                  "assets/nsbm_logo.png",
                  width: size.width / 2,
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("NSBM", style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 50,
                      width: size.width / 2,
                      child: const Row(
                        children: [
                          Square(Colors.black),
                          Square(Colors.black),
                          Square(Colors.black),
                          Square(Colors.black),
                          Square(Colors.black),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
      ]),
    );
  }
}

class Square extends StatelessWidget {
  final Color color;
  const Square(
    this.color,{
      super.key,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          color: color,
        ),
      ),
    ));
  }
}
