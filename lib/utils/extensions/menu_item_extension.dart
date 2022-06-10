import 'package:flutter/material.dart';

enum MenuItemType { camera, b, c, d }

extension MenuItemTypeExtension on MenuItemType {
  String getPath() {
    switch (this) {
      case MenuItemType.camera:
        return 'assets/images/Vector 3.png';
      case MenuItemType.b:
        return 'assets/images/Vector 4.png';
      case MenuItemType.c:
        return 'assets/images/Vector 5.png';
      case MenuItemType.d:
        return 'assets/images/Vector 6.png';
    }
  }

  Color getBackgroundColor() {
    switch (this) {
      case MenuItemType.camera:
        return const Color(0xFF3E8469);
      case MenuItemType.b:
        return const Color(0xFF69B09C);
      case MenuItemType.c:
        return const Color(0xFF6AAE72);
      case MenuItemType.d:
        return const Color(0xFFA9D571);
    }
  }

  String getTitle() {
    switch (this) {
      case MenuItemType.camera:
        return 'Camera';
      case MenuItemType.b:
        return 'The  produces';
      case MenuItemType.c:
        return 'analyzer produces';
      case MenuItemType.d:
        return 'The  produces';
    }
  }

  IconData getIcon() {
    switch (this) {
      case MenuItemType.camera:
        return Icons.camera;
      case MenuItemType.b:
        return Icons.u_turn_left;
      case MenuItemType.c:
        return Icons.g_mobiledata;
      case MenuItemType.d:
        return Icons.label_important_outline;
    }
  }
}
