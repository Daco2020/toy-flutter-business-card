import 'package:flutter/material.dart';

// 시작 화면
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/main');
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/penguin.jpg', width: 200, height: 200),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text("뺑끼펭귄",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey)),
            ),
          ],
        ),
      ),
    );
  }
}
