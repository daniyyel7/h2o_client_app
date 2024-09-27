import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String? labelText;

  const TextFormFieldCustom({super.key, this.labelText});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xFFA2A8A9),
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.circular(15),
        gapPadding: 4);

    final decoration = InputDecoration(
      border: outlineInputBorder,
      labelText: labelText,
      filled: true,
      fillColor: Colors.white,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        focusNode: focusNode,
        controller: textController,
        decoration: decoration,
        style: const TextStyle(),
      ),
    );
  }
}
