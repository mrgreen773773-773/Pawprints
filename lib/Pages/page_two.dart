import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const PageTwo({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            /// 📚 Bookshelf (left side)
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: screenWidth * 0.05),
                width: screenWidth * 0.25,
                height: screenHeight * 0.5,
                color: Colors.brown[600],
                child: const Center(child: Text("Bookshelf")),
              ),
            ),

            /// 🕯️ Memorial (triangle above bookshelf)
            Positioned(
              left: screenWidth * 0.1,
              top: screenHeight * 0.25,
              child: Container(
                width: screenWidth * 0.15,
                height: screenWidth * 0.15,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.rectangle,
                ),
                child: const Center(child: Text("Memorial")),
              ),
            ),

            /// 🛋️ Couch (center, background)
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                  top: screenHeight * 0.3,
                  left: screenWidth * 0.25,
                  ),
                width: screenWidth * 0.6,
                height: screenHeight * 0.2,
                color: Colors.green[500],
                child: const Center(child: Text("Couch")),
              ),
            ),

            /// ☕ Coffee Table (foreground)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: screenHeight * 0.125),
                width: screenWidth * 0.6,
                height: screenHeight * 0.12,
                color: Colors.amber,
                child: const Center(child: Text("Coffee Table")),
              ),
            ),

            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(
                  top: screenHeight * 0.25,
                  left: screenWidth * 0.45,
                  ),
                width: screenWidth * 0.2,
                height: screenHeight * 0.1,
                color: Colors.red,
                child: const Center(child: Text("Other Photo")),
              ),
            ),

            /// 📸 Photo Album (top center wall)
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: screenHeight * 0.2),
                width: screenWidth * 0.2,
                height: screenHeight * 0.1,
                color: Colors.red,
                child: const Center(child: Text("Photo Album")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}