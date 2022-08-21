import 'package:flutter/material.dart';
import 'package:trackassist/config/constants.dart';

class IconTile extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;
  IconTile({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Icon(
        icon,
        size: 40,
        color: COR_PRIMARIA,
      ),
      onTap: () => onTap,
    );
  }
}
