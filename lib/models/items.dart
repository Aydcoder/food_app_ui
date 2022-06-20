class Item {
  final String imageName;
  final int price;
  final String name;
  final double rating;
  final int? previousPrice;
  final String? seller;

  Item(
      {required this.imageName,
      required this.price,
      required this.name,
      required this.rating,
      this.previousPrice,
      this.seller});
}
