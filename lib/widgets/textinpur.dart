import 'package:flutter/material.dart';

class Textwidgets extends StatelessWidget {
  const Textwidgets(
      {super.key,
      required this.hinttext,
      required this.istrue,
      required this.textInputType,
      required this.textEditingController});
  final String hinttext;
  final bool istrue;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      controller: textEditingController,
      obscureText: istrue,
      decoration: InputDecoration(
        hintText: hinttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
              color: Colors.blueAccent, style: BorderStyle.solid),
        ),
      ),
    );
  }
}
