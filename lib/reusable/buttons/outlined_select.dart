import 'package:flutter/material.dart';

import '../../config/constants.dart';

class OutlinedSelect extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  OutlinedSelect({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: ElevatedButton(
        onPressed: () => onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          backgroundColor: MaterialStateColor.resolveWith(
            ((states) => COR_PRIMARIA),
          ),
          elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return 0;
              }
              return 0;
            },
          ),
          side:
              MaterialStateBorderSide.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered) ||
                states.contains(MaterialState.selected)) {
              return const BorderSide(color: Colors.white, width: 2);
            }
            return const BorderSide(color: COR_PRIMARIA, width: 2);
          }),
        ),
        child: Text(label),
      ),
    );
  }
}
