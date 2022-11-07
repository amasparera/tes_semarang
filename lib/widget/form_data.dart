import 'package:flutter/material.dart';

class FormData extends StatelessWidget {
  const FormData({
    Key? key,
    required this.hint,
  }) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffD9D9D9)),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
