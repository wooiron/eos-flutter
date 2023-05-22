import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('해위'),
        leading: Icon(Icons.close),
      ),
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/eos_logo.png',
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  'assets/images/eos_logo.png',
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  'assets/images/eos_logo.png',
                  width: 50,
                  height: 50,
                ),
              ]),
          Container(
            decoration:
                BoxDecoration(border: Border.all(width: 10), color: Colors.red),
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(50),
            child: const Center(child: Text('hi')),
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.green,
          ),
          Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ))
        ],
      ),
      bottomNavigationBar: const BottomAppBar(child: Text('hi')),
    );
  }
}
