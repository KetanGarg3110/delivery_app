import 'package:delivery_app/models/menu_items.dart';

class MenuRepository {
  Future<List<MenuItems>> getMenu(int restaurantId) async {
    await Future.delayed(Duration(seconds: 1));

    if (restaurantId == 1) {
      return [
        MenuItems(
          id: 1,
          name: "Pepperoni Pizza",
          price: 250,
          imageUrl:
              "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg",
          description:
              "Loaded with fresh veggies: capsicum, tomato, onion, and corn.",
        ),
        MenuItems(
          id: 2,
          name: "Margherita Pizza",
          price: 200,
          imageUrl:
              "https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg",
          description: "Classic delight with 100% real mozzarella cheese.",
        ),
      ];
    } else if (restaurantId == 2) {
      return [
        MenuItems(
          id: 3,
          name: "Cheeseburger",
          price: 150,
          imageUrl:
              "https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg",
          description:
              "Crispy veggie patty layered with lettuce and spicy mayo.",
        ),
        MenuItems(
          id: 4,
          name: "Veggie Burger",
          price: 120,
          imageUrl:
              "https://images.pexels.com/photos/1893555/pexels-photo-1893555.jpeg",
          description: "Golden fried potatoes sprinkled with salt & spice.",
        ),
      ];
    } else {
      return [
        MenuItems(
          id: 5,
          name: "Pasta Alfredo",
          price: 300,
          imageUrl:
              "https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg",
          description: "Creamy Alfredo pasta with herbs and parmesan cheese.",
        ),
        MenuItems(
          id: 6,
          name: "Tuna Roll",
          price: 280,
          imageUrl:
              "https://hauteliving.com/wp-content/uploads/2014/01/NOBU-059-300DPI.jpg",
          description: "Spicy and tuna roll with lettuce and mayonnaise.",
        ),
      ];
    }
  }
}
