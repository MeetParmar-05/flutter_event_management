import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
          colors: [
            Colors.blue.shade200,
            Colors.blue.shade400,
            Colors.blue.shade600,
          ],
        ),
      ),
      child: Column(
        spacing: 8,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "V1.0.0",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 100, width: 100),
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTS9xZ63KY9bYOX_eXfdvpvcqgXdHOOoIsag&s',
            height: 100,
            width: 100,
          ),
          SizedBox(height: 100, width: 100),
          CircularProgressIndicator.adaptive(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            strokeWidth: 4.0,
          ),
          Text(
            "Loading...",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(height: 100, width: 100),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.copyright, size: 20, color: Colors.black),
                SizedBox(width: 4),
                Text(
                  '${DateTime.now().year} Event Planner. All rights reserved.',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
