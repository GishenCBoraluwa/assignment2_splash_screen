
import 'package:flutter/material.dart';


class SpalahPage2 extends StatelessWidget {
  const SpalahPage2({super.key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Container(
                  color: Colors.blue,
                  width: 150,
                  height: 150,
                ),
              ),
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.yellow,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("NSBM",style: TextStyle( fontSize: 20)),
                    Container(
                      color: Colors.green,
                      height: 50,
                      width: size.width/2,
                      child: const Row(
                        children: [
                          squre(),
                          squre(),
                          squre(),
                          squre(),
                        ],
                      ),
                    )
                  ],
                ),
                ),
            )
          )
        ]

      ),
    );
  }
  
  
}

class squre extends StatelessWidget {
  const squre({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 20,
        height: 20,
        color: Colors.black,
      ),
    );
  }
}
