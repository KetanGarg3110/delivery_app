// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
// import 'package:delivery_app/models/menu_items.dart';
// import 'package:meta/meta.dart';
//
// part 'cart_event.dart';
// part 'cart_state.dart';
//
// class CartBloc extends Bloc<CartEvent, CartState> {
//   CartBloc() : super(CartState([])) {
//     on<AddToCart>(addToCart);
//     on<RemoveFromCart>(removeFromCart);
//     on<ClearCart>(clearCart);
//   }
//   Future<void> addToCart (AddToCart event, Emitter<CartState> emit) async{
//     final updated = List<MenuItems>.from(state.items);
//     updated.add(event.items);
//     emit(CartState(updated));
//   }
//
//   FutureOr<void> removeFromCart(RemoveFromCart event, Emitter<CartState> emit) {
//     final updated =List<MenuItems>.from(state.items);
//     updated.remove(event.items);
//     emit(CartState(updated));
//   }
//
//   FutureOr<void> clearCart(ClearCart event, Emitter<CartState> emit) {
//     emit(CartState([]));
//   }
// }
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../models/cart_item.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState(items: [])) {
    on<AddToCart>(_onAddToCart);
    on<RemoveFromCart>(_onRemoveFromCart);
    on<ClearCart>(_onClearCart);
  }

  void _onAddToCart(AddToCart event, Emitter<CartState> emit) {
    final items = List<CartItem>.from(state.items);
    final index = items.indexWhere((item) => item.id == event.item.id);

    if (index != -1) {
      // Already exists → increase quantity
      final updatedItem = items[index].copyWith(
        quantity: items[index].quantity + 1,
      );
      items[index] = updatedItem;
    } else {
      // Add new
      items.add(event.item);
    }

    emit(CartState(items: items));
  }

  void _onRemoveFromCart(RemoveFromCart event, Emitter<CartState> emit) {
    final items = List<CartItem>.from(state.items);
    final index = items.indexWhere((item) => item.id == event.item.id);

    if (index != -1) {
      if (items[index].quantity > 1) {
        // decrease quantity
        final updatedItem = items[index].copyWith(
          quantity: items[index].quantity - 1,
        );
        items[index] = updatedItem;
      } else {
        // remove item
        items.removeAt(index);
      }
    }

    emit(CartState(items: items));
  }

  void  _onClearCart(ClearCart event, Emitter<CartState> emit) {
    emit(const CartState(items: []));
  }
}

