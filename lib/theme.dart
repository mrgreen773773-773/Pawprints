import 'package:flutter/material.dart';

/// AppTheme centralizes the colors for light (day) and dark (night) mode.
/// Each furniture/background element can ask AppTheme for its color
/// instead of hardcoding them.
class AppTheme {
  // Background colors
  static Color background(bool isDarkMode) {
    return isDarkMode ? const Color(0xFF2E1A47) : const Color(0xFFB3E5FC);
    // Dark purple vs. light blue
  }

  // Couch example
  static Color couch(bool isDarkMode) {
    return isDarkMode ? Colors.green[900]! : Colors.green[400]!;
  }

  // Bed example (for bedroom later)
  static Color bed(bool isDarkMode) {
    return isDarkMode ? Colors.blueGrey[800]! : Colors.blue[300]!;
  }

  // Kitchen fridge example
  static Color fridge(bool isDarkMode) {
    return isDarkMode ? Colors.grey[700]! : Colors.grey[300]!;
  }

  // Generic text color
  static Color text(bool isDarkMode) {
    return isDarkMode ? Colors.white : Colors.black;
  }
}