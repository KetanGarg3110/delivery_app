import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/restaurant.dart';
import '../../repositories/restaurant_repository.dart';

part 'restaurant_event.dart';
part 'restaurant_state.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  final RestaurantRepository restaurantRepository ;
  RestaurantBloc(this.restaurantRepository) : super(RestaurantInitial()) {
    on<RestaurantFetch>(restaurantFetch);
  }


  Future<void> restaurantFetch(
    RestaurantFetch event,
    Emitter<RestaurantState> emit,
  ) async {
    emit(RestaurantLoading());

    try {
      final restaurants = await restaurantRepository.getRestaurants();
      emit(RestaurantLoaded(restaurants));
    } catch (e) {
      emit(RestaurantError("Failed to load restaurants"));
    }
  }
}
