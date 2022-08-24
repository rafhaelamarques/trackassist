// ignore_for_file: must_be_immutable, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:trackassist/config/constants.dart';

class DefaultAppBar extends AppBar {
  DefaultAppBar(
      {this.customActions, this.customLeading, required this.titleText});
  final String titleText;
  List<Widget>? customActions;
  Widget? customLeading;

  @override
  Widget? get title => Text(titleText,
      style: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: WHITE));

  @override
  bool? get centerTitle => true;

  @override
  Color? get backgroundColor => COR_PRIMARIA;

  @override
  IconThemeData? get iconTheme => const IconThemeData(color: WHITE, size: 30);

  @override
  List<Widget>? get actions => customActions;

  @override
  Widget? get leading => customLeading;

  @override
  double? get elevation => 0;
}
