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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF06080F), Color(0xFF0C1224), Color(0xFF161B35)],
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "V1.0.0",
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    letterSpacing: 0.4,
                  ),
                ),
              ),
              const SizedBox(height: 64),
              const Center(
                child: Icon(Icons.event, size: 140, color: Color(0xFF00F2FE)),
              ),
              const SizedBox(height: 32),
              const Center(
                child: Text(
                  'Event Manager',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Center(
                child: Text(
                  'Organize, edit and explore every event in a premium dark mode.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Center(
                child: CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF00F2FE)),
                  strokeWidth: 4.0,
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  "Fetching data...",
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.copyright, size: 18, color: Colors.white54),
                  const SizedBox(width: 8),
                  Text(
                    '${DateTime.now().year} - Event Manager. All rights reserved.',
                    style: const TextStyle(color: Colors.white54, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
