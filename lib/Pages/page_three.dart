import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  final bool isDarkMode;

  const PageThree({super.key, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            /// 🧊 Fridge (left side, background)
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(
                  left: screenWidth * 0.05,
                  bottom: screenHeight * 0.2,
                ),
                width: screenWidth * 0.25,
                height: screenHeight * 0.5,
                color: Colors.grey[700],
                child: const Center(child: Text("Fridge")),
              ),
            ),

            /// 📅 Calendar (on fridge)
            Positioned(
              left: screenWidth * 0.1,
              top: screenHeight * 0.2,
              child: Container(
                width: screenWidth * 0.15,
                height: screenHeight * 0.1,
                decoration: BoxDecoration(
                  color: Colors.pink[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(child: Text("Calendar")),
              ),
            ),

            /// 🪟 Window (top right)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: screenHeight * 0.1, right: screenWidth * 0.1),
                width: screenWidth * 0.5,
                height: screenHeight * 0.12,
                color: Colors.lightBlue[300],
                child: const Center(child: Text("Window")),
              ),
            ),

            /// 🍴 Cabinets (right side)
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: screenWidth * 0.05),
                width: screenWidth * 0.6,
                height: screenHeight * 0.3,
                color: Colors.grey[600],
                child: const Center(child: Text("Cabinets")),
              ),
            ),

            /// 🍽️ Table (foreground, bottom center)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                  bottom: screenHeight * 0.2,
                  left: screenWidth * 0.3,
                ),
                width: screenWidth * 0.4,
                height: screenHeight * 0.15,
                color: Colors.deepOrange,
                child: const Center(child: Text("Table")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}