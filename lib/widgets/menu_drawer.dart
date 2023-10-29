import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuTile extends StatelessWidget {
  
  String textTitle;
  IconData iconLeading;
  
  MenuTile({required this.textTitle, required this.iconLeading, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(textTitle),
      leading: Icon(iconLeading),
    );
  }
}