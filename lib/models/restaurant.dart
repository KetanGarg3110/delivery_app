class Restaurant {
  final int id;
  final String name;
  final String address;
  final String imageUrl;

  Restaurant({
    required this.id,
    required this.name,
    required this.address,
    required this.imageUrl,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      address: json['address'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}
