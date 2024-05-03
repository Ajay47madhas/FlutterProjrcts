import 'package:flutter/material.dart';

class SizedButton extends StatelessWidget {
  final int size;
  final bool isSelectedor;

  const SizedButton({super.key, required this.size, this.isSelectedor = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05),
      margin: EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.01),
      decoration: BoxDecoration(
        color: isSelectedor
            ? Theme.of(context).colorScheme.primary
            : Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: isSelectedor ? Colors.white : Colors.black),
      ),
      child: Text(
        size.toString(),
        style: TextStyle(
          color: isSelectedor ? Colors.white : Colors.black38,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
