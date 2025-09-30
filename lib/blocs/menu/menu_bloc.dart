import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delivery_app/repositories/menu_repository.dart';
import 'package:meta/meta.dart';

import '../../models/menu_items.dart';

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final MenuRepository repository;
  MenuBloc(this.repository) : super(MenuInitial()) {
  on<FetchMenu>(fetchMenu);
  }

  FutureOr<void> fetchMenu(FetchMenu event, Emitter<MenuState> emit) async{
    emit(MenuLoading());
    try{
      final items =await repository.getMenu(event.restaurantId);
      emit(MenuLoaded(items.cast<MenuItems>()));
    }catch (e){
      emit(MenuError("Failed to load menu"));
    }
  }
}
