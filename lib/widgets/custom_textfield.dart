import 'package:flutter/material.dart';

import '../utils/constant.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: kGreyColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              border: Border.all(color: Colors.white),
            ),
            child: const SizedBox(
              height: 48,
              width: 389,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Contact',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
