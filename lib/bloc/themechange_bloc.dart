import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:themechangeapp/global/theme/apptheme.dart';

part 'themechange_event.dart';
part 'themechange_state.dart';

class ThemechangeBloc extends Bloc<ThemechangeEvent, ThemechangeState> {
  ThemechangeBloc()
      : super(ThemeChangeInitialState(
            theme: appThemeData[ThemeColorNameCategory.blueLight]!)) {
    print("amibloc e ");
    //print('amr event data ${ThemechangeState}');
    on<ThemeChangeAddEvent>((event, emit) {
      //event call korechen 'ThemeChangeAddEvent' but ekhane diyechilen 'ThemechangeEvent'
      print('amr event data ${appThemeData[event.appTheme]!}');
      //ThemeData theme = appThemeData[event]!;
      emit(ThemeChangeLoadedState(
          theme: appThemeData[event
              .appTheme]!)); // thats why event variable (event.value) pacchilo na.

      // TODO: implement event handler
    });
  }
}
