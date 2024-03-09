import 'package:flutter/material.dart';

Widget buildTextField(String labelText, String prefixText,
    TextEditingController textController, Function f) {
  return TextField(
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.amber),
      border: const OutlineInputBorder(),
      prefixText: prefixText,
    ),
    onChanged: (texto) {
      f(texto);
    },
    controller: textController,
    style: const TextStyle(color: Colors.amber),
    keyboardType: TextInputType.number,
  );
}
