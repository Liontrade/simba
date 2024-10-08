import 'package:flutter/material.dart';

class CustomTripleToggleButton extends StatelessWidget {
  const CustomTripleToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center, // Center the toggle buttons
        child: ToggleButtons(
          children: [
            Expanded(child: Center(child: Text("All"))),
            Expanded(child: Center(child: Text("For you"))),
            Expanded(child: Center(child:Text("Saved"))),
          ],
          isSelected: [true, false],
          onPressed: (int index) {},
          borderRadius: BorderRadius.circular(10),
          fillColor: Colors.orange,
          selectedColor: Colors.white,
          borderColor: Colors.grey,
          selectedBorderColor: Colors.orange,
          constraints: BoxConstraints.expand(width: (MediaQuery.of(context).size.width - 50) / 2), // Adjust width
        ),
      ),
    );
  }
}
