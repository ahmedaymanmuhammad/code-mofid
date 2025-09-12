class MyWishListItem {
  final String title;
  final double rating;
  final double price;
  final String image;
  bool isFavorite;
  MyWishListItem({
    required this.title,
    required this.rating,
    required this.price,
    required this.image,
    this.isFavorite = false,
  });
}
