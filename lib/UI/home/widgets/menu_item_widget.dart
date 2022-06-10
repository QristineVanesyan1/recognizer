import 'package:flutter/material.dart';
import 'package:recognizer/utils/extensions/menu_item_extension.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({Key? key, required this.type, this.onTap})
      : super(key: key);
  final MenuItemType type;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
              alignment: Alignment.bottomCenter,
              width: 153,
              height: 115,
              decoration: BoxDecoration(
                  color: type.getBackgroundColor(),
                  borderRadius: const BorderRadius.all(Radius.circular(21.0))),
              child: Image.asset(type.getPath())),
          Positioned(
              left: 20,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    type.getIcon(),
                    color: Colors.white,
                  ),
                  Text(
                    type.getTitle(),
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
