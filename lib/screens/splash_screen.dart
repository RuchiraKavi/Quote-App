import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Blue box with quote icon
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                color: Color(0xff4DA3FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.format_quote,
                size: 80,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 30),

            // Quotes Text exactly like screenshot
            Text(
              "Quotes",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
