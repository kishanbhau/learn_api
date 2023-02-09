import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:learn_api/home.dart';
import 'package:learn_api/tempdrawer.dart';


class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Discover',
              baseStyle: TextStyle(),
              selectedStyle: TextStyle()),
          Home(),)
    ];
  }

  @override
  Widget build(BuildContext context) {

    return AppHiddenDrawerMenu (
          elevationAppBar: 0,
          styleAutoTittleName:const TextStyle(
            color: Colors.black
          ),
          isTitleCentered: true,
          disableAppBarDefault: true,
          backgroundColorAppBar: Colors.transparent,
          backgroundColorContent:Colors.transparent,

          screens: _pages,
          initPositionSelected: 0,
          backgroundColorMenu: Colors.white);

  }
}
