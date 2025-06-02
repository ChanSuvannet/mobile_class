import 'package:flutter/material.dart';

class DarkModeSwitch extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onToggle;
  final String darkText;
  final String lightText;

  const DarkModeSwitch({
    super.key,
    required this.isDarkMode,
    required this.onToggle,
    required this.darkText,
    required this.lightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 8),
        Text(
          isDarkMode ? darkText : lightText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color:
                isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF545454),
            fontSize: 14,
          ),
        ),
        const SizedBox(width: 8),
        Switch(
          value: isDarkMode,
          onChanged: onToggle,
          activeColor: Colors.orange,
        ),
      ],
    );
  }
}
