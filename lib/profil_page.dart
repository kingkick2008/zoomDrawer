import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu/menu_widget.dart';

class ProfilPage extends StatelessWidget {
  final zoomDrawerController;
  ProfilPage(this.zoomDrawerController);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: MenuWidget(),

        // InkWell(
        //   onTap: () => zoomDrawerController.toggle(),
        //   child: Icon(Icons.menu),
        // ),
      ),
    );
  }
}
