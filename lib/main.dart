import 'package:delivery_app/blocs/cart/cart_bloc.dart';
import 'package:delivery_app/blocs/menu/menu_bloc.dart';
import 'package:delivery_app/blocs/restaurant/restaurant_bloc.dart';
import 'package:delivery_app/repositories/menu_repository.dart';
import 'package:delivery_app/repositories/restaurant_repository.dart';
import 'package:delivery_app/ui/restaurant_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CartBloc()),
        BlocProvider(
          create: (context) => RestaurantBloc(RestaurantRepository()),
        ),
        BlocProvider(create: (context) => MenuBloc(MenuRepository())),
      ],
      child: MaterialApp(
        title: 'Food Ordering App',
        theme: ThemeData(primarySwatch: Colors.deepOrange, useMaterial3: true),
        home: RestaurantListScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
