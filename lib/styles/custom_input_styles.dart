import 'package:flutter/material.dart';
import '../config/constants.dart';

class CustomInputStyles {
  static InputDecoration iconLabel(String label, Icon prefixIcon) =>
      InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          fontSize: 16,
          color: COR_PRIMARIA,
        ),
        prefixIcon: prefixIcon,
        prefixIconConstraints:
            const BoxConstraints(minHeight: 45, minWidth: 40),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(193, 195, 203, 1)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(193, 195, 203, 1)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(200, 1, 1, 1)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(200, 1, 1, 1)),
        ),
      );
}
