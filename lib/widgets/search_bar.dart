import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';

class LtSearchBar extends StatelessWidget {
  const LtSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: LtColor.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 15,
              blurRadius: 30,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: TextField(
          keyboardType: TextInputType.text,
          style: LtTextStyle.manrope16medium,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: 'Search for stocks',
            hintStyle: LtTextStyle.manrope14regular,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: LtColor.white,
          ),
        ),
      ),
    );
  }
}
