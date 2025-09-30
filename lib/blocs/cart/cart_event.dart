part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class AddToCart extends CartEvent {
  final CartItem item;
  const AddToCart(this.item);

  @override
  List<Object> get props => [item];
}

class RemoveFromCart extends CartEvent {
  final CartItem item;
  const RemoveFromCart(this.item);

  @override
  List<Object> get props => [item];
}

class ClearCart extends CartEvent {}
