class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  final String name;
  final String cuisine;
  final List<double> ratings;

  int get ratingAmount => ratings.length;

  double avarageRating() {
    var totalRating = ratings.reduce((value, element) => value += element);
    return totalRating / ratingAmount;
  }
}

main(List<String> args) {
  final restaurantOne = Restaurant(
      name: 'Pizza Perfecto',
      cuisine: 'Italy',
      ratings: [4.6, 5.0, 4.2, 3.9, 3.7, 4.2]);

  print(
      '${restaurantOne.name} - Rating Amount: ${restaurantOne.ratingAmount} - Avarage: ${restaurantOne.avarageRating().toStringAsFixed(2)}');
}
