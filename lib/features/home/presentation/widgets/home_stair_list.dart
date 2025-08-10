
import 'package:flutter/material.dart';
import 'package:task/widgets/stari_widgets.dart';

class TestStairs extends StatelessWidget {
  const TestStairs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: StairList(
            stepHeight: 15,
            spacing: null, // auto spacing
            children: [
              Icon(Icons.star, size: 40, color: Colors.red),
              Icon(Icons.star, size: 40, color: Colors.green),
              Icon(Icons.star, size: 40, color: Colors.blue),
              Text("Step 4", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}