class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  //this is compound variable
  int get totalRatings => ratings.length;
  //Avg Function
  double AvgRating() {
    //Store value of avg
    double avg =
        ratings.reduce((value, element) => value + element) / totalRatings;
    return avg;
  }
}

void main() {
  final rest1 =
      Restaurant(name: 'Harish', cuisine: 'Indian', ratings: [1, 2, 3, 4]);
  //result : 2.5
  print(rest1.AvgRating());
}
