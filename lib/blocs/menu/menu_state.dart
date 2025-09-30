part of 'menu_bloc.dart';

@immutable
abstract class MenuState {}

class MenuInitial extends MenuState {}

class MenuLoading extends MenuState {}

class MenuLoaded extends MenuState {
  final List<MenuItems> menuItems;
  MenuLoaded(this.menuItems);
}

class MenuError extends MenuState {
  final String message;
  MenuError(this.message);
}
