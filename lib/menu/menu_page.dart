import 'package:drawer/menu/tools_utilites.dart';
import 'package:flutter/material.dart';

import 'menuItemModel.dart';

class MenuItems {
  static const home = MenuItemModel('Home', Icons.home);
  static const contact = MenuItemModel('Contact us', Icons.email);
  static const categorie = MenuItemModel('Categorie', Icons.list);

  static const all = <MenuItemModel>[home, contact, categorie];
}

class MenuPage extends StatelessWidget {
  final MenuItemModel currentItem;
  final ValueChanged<MenuItemModel> onSelectedItem;
  const MenuPage(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: mainColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              DrawerHeader(
                child: CircleAvatar(
                  backgroundColor: mainColor,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg"),
                  maxRadius: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: kDefaultSize,
                    left: kDefaultSize,
                    right: kDefaultSize),
                child: Text(
                  'Emna Abdouli',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: kDefaultSize,
              ),
              ...MenuItems.all.map(builMenuItem).toList(),
              Divider(
                color: whiteColor,
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ));

  Widget builMenuItem(MenuItemModel item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () => onSelectedItem(item),
        ),
      );
}
