import 'package:flutter/material.dart';

class ThichContainer extends StatelessWidget {
  final bool? isColor;
  const ThichContainer({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.5, color: isColor == null ? Colors.white : Colors.black),
      ),
    );
  }
}
