import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  final zoomDrawerController;
  ContactUsPage(this.zoomDrawerController);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        leading: InkWell(
          onTap: () => zoomDrawerController.toggle(),
          child: Icon(Icons.menu),
        ),
      ),
    );
  }
}
