import 'package:flutter/cupertino.dart';

class Nav {
  final String? name;
  final icon;
  final Widget? screen;
  final bool isCenter;

  Nav({this.name, this.icon, this.screen, this.isCenter = false});
}
