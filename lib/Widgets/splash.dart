import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.buildContext});

  final BuildContext buildContext;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(widget.buildContext, '/s2');
    });
  }

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
            Color(0xFF000000), // Pure black
            Color(0xFF15161B), // Dark carbon
            Color(0xFF202229), // Metallic charcoal
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
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 100, width: 100),
          Icon(Icons.event, size: 150, color: Colors.cyan),
          // Image.network(
          //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTS9xZ63KY9bYOX_eXfdvpvcqgXdHOOoIsag&s',
          //   height: 100,
          //   width: 100,
          // ),
          Text(
            'Event Manager',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight(50),
            ),
          ),
          SizedBox(height: 100, width: 100),
          CircularProgressIndicator.adaptive(
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF00F2FE)),
            strokeWidth: 4.0,
          ),
          Text(
            "Fetching data...",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 100, width: 100),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushReplacementNamed(widget.buildContext, '/s2');
          //   },
          //   child: Text("Continue"),
          // ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.copyright, size: 20, color: Colors.white),
                SizedBox(width: 4),
                Text(
                  '${DateTime.now().year} - Event Manager. All rights reserved.',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
