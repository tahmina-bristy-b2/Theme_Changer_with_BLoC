import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themechangeapp/Screens/home_page.dart';
import 'package:themechangeapp/bloc/themechange_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemechangeBloc(),
      // ignore: prefer_const_constructors
      child: BlocBuilder<ThemechangeBloc, ThemechangeState>(
        builder: (context, state) {
          print("object===========${state.theme}");
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: state.theme,
            home: HomePage(title: 'Theme Color Changer'),
          );
        },
      ),
    );
  }
}
