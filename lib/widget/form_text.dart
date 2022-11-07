import 'package:flutter/material.dart';

class FormText extends StatelessWidget {
  const FormText({
    Key? key,
    required this.isReq,
    required this.text,
  }) : super(key: key);

  final bool isReq;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 4),
      child: Row(
        children: [
          Text(text),
          const SizedBox(
            width: 4,
          ),
          if (isReq)
            const Text(
              "*",
              style: TextStyle(color: Colors.red),
            )
        ],
      ),
    );
  }
}
