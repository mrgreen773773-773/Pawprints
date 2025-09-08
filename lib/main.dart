import 'package:flutter/material.dart';
import 'pages/page_one.dart';
import 'pages/page_two.dart';
import 'pages/page_three.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  final ThemeData dayTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFB3E5FC), // pastel blue
    primaryColor: const Color(0xFF81D4FA),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF81D4FA),
      foregroundColor: Colors.black87,
      elevation: 0,
    ),
  );

  final ThemeData nightTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF4A148C), // deep purple
    primaryColor: const Color(0xFF7B1FA2),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF7B1FA2),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? nightTheme : dayTheme,
      debugShowCheckedModeBanner: false,
      home: SwipePageView(
        isDarkMode: _isDarkMode,
        onToggleTheme: _toggleTheme,
      ),
    );
  }
}

class SwipePageView extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const SwipePageView({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  State<SwipePageView> createState() => _SwipePageViewState();
}

class _SwipePageViewState extends State<SwipePageView> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1); // Start in Living Room
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: Icon(
                widget.isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
              ),
              onPressed: widget.onToggleTheme,
            ),
          ),
        ],
      ),

      // Empty drawer for now
      drawer: const Drawer(
        child: Center(
          child: Text("Menu (to be filled later)"),
        ),
      ),

      body: PageView(
        controller: _pageController,
        children: [
          PageOne(isDarkMode: widget.isDarkMode),
          PageTwo(
            isDarkMode: widget.isDarkMode,
            onToggleTheme: widget.onToggleTheme,
          ),
          PageThree(isDarkMode: widget.isDarkMode),
        ],
      ),
    );
  }
}