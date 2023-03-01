part of 'themechange_bloc.dart';

abstract class ThemechangeState extends Equatable {
  final ThemeData theme;
  const ThemechangeState({required this.theme});

  @override
  List<Object> get props => [theme];
}

class ThemeChangeInitialState extends ThemechangeState {
  final ThemeData theme;
  const ThemeChangeInitialState({required this.theme}) : super(theme: theme);

  @override
  List<Object> get props => [theme];
}

class ThemeChangeLoadingState extends ThemechangeState {
  ThemeChangeLoadingState({required super.theme});
}

class ThemeChangeLoadedState extends ThemechangeState {
  final ThemeData theme;
  const ThemeChangeLoadedState({required this.theme}) : super(theme: theme);

  @override
  List<Object> get props => [theme];
}
