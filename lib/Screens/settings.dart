import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themechangeapp/Screens/home_page.dart';
import 'package:themechangeapp/bloc/themechange_bloc.dart';
import 'package:themechangeapp/global/theme/apptheme.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Preference")),
      ),
      body: ListView.builder(
          itemCount: ThemeColorNameCategory.values.length,
          itemBuilder: (context, index) {
            final theme1 = ThemeColorNameCategory.values[index];

            return Card(
              color: appThemeData[theme1]!.primaryColor,
              child: ListTile(
                title: Text("${ThemeColorNameCategory.values[index]}"),
                onTap: () {
                  context.read<ThemechangeBloc>().add(ThemeChangeAddEvent(
                      appTheme: ThemeColorNameCategory.values[index]));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                                name: ThemeColorNameCategory.values[index]
                                    .toString(),
                              )));
                },
              ),
            );
          }),
    );
  }
}
