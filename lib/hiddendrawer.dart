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
              name: 'Homeghuygtgtutvb',
              baseStyle: TextStyle(),
              selectedStyle: TextStyle()),
          Home(),)
    ];
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AppHiddenDrawerMenu (
            elevationAppBar: 0,
            styleAutoTittleName:const TextStyle(
              color: Colors.black
            ),
            actionsAppBar: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: Image(image: AssetImage('assets/Avatar.jpg'),),
                ),
              )
            ],
            leadingAppBar:const Image(image: AssetImage('assets/fi_menu.png')) ,
            backgroundColorAppBar: Colors.transparent,
            backgroundColorContent:Colors.transparent ,
            screens: _pages,
            initPositionSelected: 0,
            backgroundColorMenu: Colors.white),
    );

  }
}
