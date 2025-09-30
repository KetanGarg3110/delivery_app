part of 'menu_bloc.dart';

@immutable
abstract class MenuEvent {}

class FetchMenu extends MenuEvent {
  final int restaurantId;
  FetchMenu(this.restaurantId);
}
