import '../models/restaurant.dart';

class RestaurantRepository {
  Future<List<Restaurant>> getRestaurants() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      Restaurant(
        id: 1,
        name: 'Pizza Place',
        address: '123 Main ',
        imageUrl:
            'https://tse3.mm.bing.net/th/id/OIP._XP6dIMejy2reFgp3yLSRQHaEK?pid=Api&P=0&h=220',
      ),
      Restaurant(
        id: 2,
        name: "Burger Town",
        address: "456 Park",
        imageUrl:
            'https://tse2.mm.bing.net/th/id/OIP.Qeg68QqSH2cLVPtH4OV7wwHaE8?pid=Api&P=0&h=220',
      ),
      Restaurant(
        id: 3,
        name: "Momos World",
        address: "789 Street",
        imageUrl:
            'https://tse1.mm.bing.net/th/id/OIP.0KbKJuH9O1aFNIP3pvgswQHaDx?pid=Api&P=0&h=220',
      ),
      Restaurant(
        id: 4,
        name: "Spicy Tandoor",
        address: "MG Road, Delhi",
        imageUrl:
            "https://tse4.mm.bing.net/th/id/OIP.CC0kltbrHTrj23WYzobG5wHaE1?pid=Api&P=0&h=220",
      ),
    ];
  }
}
