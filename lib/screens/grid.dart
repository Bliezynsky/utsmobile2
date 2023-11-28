import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/aespa.png',
      'assets/images/apink.png',
      'assets/images/billlie.png',
      'assets/images/blackpink.png',
      'assets/images/csr.jpg',
      'assets/images/dc.png',
      'assets/images/fifty2.jpg',
      'assets/images/fromis9.png',
      'assets/images/gfriend.png',
      'assets/images/ive.png',
      'assets/images/izone.png',
      'assets/images/kepler.png',
      'assets/images/le.png',
      'assets/images/mamamoo.png',
      'assets/images/momol.png',
      'assets/images/nmixx.png',
      'assets/images/omg.png',
      'assets/images/purplekiss.png',
      'assets/images/redvelvet.png',
      'assets/images/sn.png',
      'assets/images/stayc.png',
      'assets/images/twice.jpg',
      'assets/images/weeekly.png',
      'assets/images/wjsn.png',
      
    ];
    return Scaffold(
      body: Container(
        child: GridView.builder(
            itemCount: 24,
            itemBuilder: (context, index) {
              return Card(
                elevation: 30,
                child: Center(
                  child: Image.asset(images[index]),
                ),
              );
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
      ),
    );
  }
}