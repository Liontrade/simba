import 'package:flutter/material.dart';

class CustomToggleButton extends StatelessWidget {
  const CustomToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center, // Center the toggle buttons
        child: ToggleButtons(
          isSelected: const [true, false],
          onPressed: (int index) {},
          borderRadius: BorderRadius.circular(10),
          fillColor: Colors.orange,
          selectedColor: Colors.white,
          borderColor: Colors.grey,
          selectedBorderColor: Colors.orange,
          constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width - 50) / 2),
          children: const [
            Expanded(child: Center(child: Text("All"))),
            Expanded(child: Center(child: Text("Liked"))),
          ], // Adjust width
        ),
      ),
    );
  }
}
