import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  final bool isDarkMode;

  const PageOne({super.key, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            /// 🪟 Window - centered at the top
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: screenHeight * 0.03),
                width: screenWidth * 0.3,
                height: screenWidth * 0.3,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent,
                ),
                child: const Center(
                  child: Text(
                    "Window",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            /// 🛏️ Bed - centered, taking most of the middle space
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                  top: screenHeight * 0.2,
                  right: screenWidth * 0.03,
                ),
                width: screenWidth * 0.45,
                height: screenHeight * 0.5,
                color: Colors.grey[400],
                child: const Center(child: Text("Bed")),
              ),
            ),

            /// 🪑 Bedside Table - left of bed
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: screenWidth * 0.03),
                width: screenWidth * 0.2,
                height: screenHeight * 0.15,
                color: Colors.brown[400],
                child: const Center(child: Text("Bedside Table")),
              ),
            ),

            /// 📚 Bookshelf - right of bed
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(
                  right: screenWidth * 0.02,
                  bottom: screenHeight * 0.15,
                ),
                width: screenWidth * 0.25,
                height: screenHeight * 0.45,
                color: Colors.brown[700],
                child: const Center(child: Text("Bookshelf")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}