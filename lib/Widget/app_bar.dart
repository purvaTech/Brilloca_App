import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu,),
    );
  }
}
