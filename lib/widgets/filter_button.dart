import 'package:flutter/material.dart';

import '../utils/constant.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final double width;
  final bool selected;
  final void Function()? onPressed;
  const FilterButton({
    super.key,
    required this.text,
    this.selected = true,
    this.width = 80,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kGreyColor.withOpacity(.5),
            blurRadius: 6.0,
            spreadRadius: 0.0,
            offset: const Offset(2.0, 2.0),
          ),
        ],
      ),
      child: SizedBox(
        height: 26,
        width: width,
        child: ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                foregroundColor:
                    MaterialStatePropertyAll(selected ? Colors.white : null),
                backgroundColor: MaterialStatePropertyAll(
                    selected ? kPrimaryColor : Colors.white),
              ),
          onPressed: onPressed,
          child: FittedBox(
            child: Text(
              text,
            ),
          ),
        ),
      ),
    );
  }
}
