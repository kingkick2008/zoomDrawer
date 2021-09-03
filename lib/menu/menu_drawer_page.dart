import 'package:drawer/contact_us_page.dart';
import 'package:drawer/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../categorie_page.dart';
import '../profil_page.dart';
import 'menuItemModel.dart';
import 'menu_page.dart';

class MenuDrawerPage extends StatefulWidget {
  const MenuDrawerPage({Key? key}) : super(key: key);

  @override
  _MenuDrawerPageState createState() => _MenuDrawerPageState();
}

class _MenuDrawerPageState extends State<MenuDrawerPage> {
  final drawerController = ZoomDrawerController();
  MenuItemModel currentItem = MenuItems.home;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        borderRadius: 40,
        angle: -10,
        showShadow: true,
        controller: drawerController,
        style: DrawerStyle.Style1,
        backgroundColor: Colors.black,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
        mainScreen: getScreen(drawerController),
        menuScreen: Builder(
            builder: (context) => MenuPage(
                  currentItem: currentItem,
                  onSelectedItem: (item) {
                    setState(() {
                      currentItem = item;
                    });
                    ZoomDrawer.of(context)!.close();
                  },
                )));
  }

  Widget getScreen(drawerController) {
    switch (currentItem) {
      case MenuItems.home:
        return ProfilPage(drawerController);
      case MenuItems.contact:
        return ContactUsPage(drawerController);
      case MenuItems.categorie:
        return CategoriePage(drawerController);
      case MenuItems.home:
      default:
        return ProfilPage(drawerController);
    }
  }
}
