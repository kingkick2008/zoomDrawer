import 'package:drawer/profil_page.dart';

import 'package:flutter/material.dart';

class CategoriePage extends StatelessWidget {
  final zoomDrawerController;
  CategoriePage(this.zoomDrawerController);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorie'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProfilPage(zoomDrawerController)));
          },
        ),
      ),
    );
  }
}
