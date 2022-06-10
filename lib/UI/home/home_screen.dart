import 'package:flutter/material.dart';
import 'package:recognizer/UI/home/widgets/menu_item_widget.dart';
import 'package:recognizer/utils/extensions/menu_item_extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> get _types => <MenuItemWidget>[
        MenuItemWidget(
          onTap: () {
            Navigator.of(context).pushNamed('/homeScreen/camera');
          },
          type: MenuItemType.camera,
        ),
        const MenuItemWidget(
          type: MenuItemType.b,
        ),
        const MenuItemWidget(
          type: MenuItemType.c,
        ),
        const MenuItemWidget(
          type: MenuItemType.d,
        ),
      ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tools",
                  style: Theme.of(context).textTheme.headline1,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 118,
                      crossAxisSpacing: 5),
                  itemCount: _types.length,
                  itemBuilder: (context, index) {
                    return _types[index];
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
