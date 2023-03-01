part of 'themechange_bloc.dart';

abstract class ThemechangeEvent extends Equatable {
  const ThemechangeEvent();

  @override
  List<Object> get props => [];
}

class ThemeChangeLoadingEvent extends ThemechangeEvent {}

class ThemeChangeAddEvent extends ThemechangeEvent {
  final ThemeColorNameCategory appTheme;
  const ThemeChangeAddEvent({required this.appTheme});

  @override
  List<Object> get props => [appTheme];
}
