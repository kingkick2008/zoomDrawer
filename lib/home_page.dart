import 'package:drawer/contact_us_page.dart';
import 'package:drawer/profil_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'categorie_page.dart';
import 'menu/menuItemModel.dart';
import 'menu/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuItemModel currentItem = MenuItems.home;
  final drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        borderRadius: 40,
        angle: -10,
        // slideWidth: MediaQuery.of(context).size.width * 0.5,
        showShadow: true,
        controller: drawerController,
        style: DrawerStyle.Style1,
        backgroundColor: Colors.black,
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
