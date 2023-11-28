import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.lightBlue,
              radius: 50,
              backgroundImage: AssetImage('assets/images/UserMale.png'),
            ),
            SizedBox(height: 20),
            Text(
              'Arik Saputra Misnanto',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'TIF 221 PA',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              '21552011119',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
