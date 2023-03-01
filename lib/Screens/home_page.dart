import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:themechangeapp/Screens/settings.dart';

class HomePage extends StatefulWidget {
  String? name;
  HomePage({super.key, String? title, this.name});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Theme Change with BLoc")),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
          child: SizedBox(
        child: Container(
          color: Colors.white,
          child: widget.name == null
              ? Text("")
              : Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "${widget.name}",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
        ),
      )),
    );
  }
}
