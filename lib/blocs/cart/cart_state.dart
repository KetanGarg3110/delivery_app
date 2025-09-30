part of 'cart_bloc.dart';

class CartState extends Equatable {
 final List<CartItem> items;

 const CartState({required this.items});

 double get totalPrice =>
     items.fold(0, (sum, item) => sum + (item.price * item.quantity));

 @override
 List<Object> get props => [items];
}
