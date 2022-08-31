import 'package:flutter/material.dart';

class ColorFilterDialog extends StatefulWidget {
  const ColorFilterDialog({Key? key}) : super(key: key);

  @override
  State<ColorFilterDialog> createState() => _ColorFilterDialogState();
}

class _ColorFilterDialogState extends State<ColorFilterDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column());
  }
}
