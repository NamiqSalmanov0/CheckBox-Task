import 'package:flutter/material.dart';

class CheckBoxes extends StatelessWidget {
  const CheckBoxes(
      {super.key,
      required this.ischeck,
      required this.OnState,
      required this.data});
  final bool? ischeck;
  final void Function(bool?) OnState;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(value: ischeck, onChanged: OnState),
      Text(
        data,
        style: const TextStyle(
            color: Colors.white,
             fontWeight: FontWeight.w500, 
            fontSize: 15),
      ),
    ]);
  }
}
