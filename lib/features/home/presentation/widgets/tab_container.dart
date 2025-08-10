import 'package:flutter/material.dart';

class TabContiner extends StatelessWidget {
  const TabContiner({super.key, required this.isSelected, required this.child});

  final bool isSelected;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.14,
      height: MediaQuery.of(context).size.width * 0.14,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isSelected
              ? [Colors.blue.shade300, Colors.blue.shade600]
              : [const Color(0xff353F54), const Color(0xff222834)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withAlpha(20), width: 1),
      ),
      child: Center(child: child),
    );
  }
}