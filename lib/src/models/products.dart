class Product {
  int id;
  String title;
  var price;
  String description;
  String category;
  String image;

  Product({
    required this.id,
    required this.title,
    this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] as int,
        title: json["title"],
        price: json["price"],
        description: json["description"],
        category: json["category"],
        image: json["image"],
      );
}

List<Product> fetchProducts() {
  List<Product> productList = [];
  return productList;
}
