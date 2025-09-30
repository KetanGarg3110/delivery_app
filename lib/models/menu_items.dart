class MenuItems {
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  final String description;

  MenuItems({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  // Factory constructor for parsing JSON
  factory MenuItems.fromJson(Map<String, dynamic> json) {
    return MenuItems(
      id: json['id'],
      name: json['name'],
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] ?? "", // fallback if missing
      description: json['description'] ?? "Tasty & Fresh!",
    );
  }
}
