class Restaurant {
  final String name;
  final String address;
  final String category;
  final String imagePath;
  final String description;

  Restaurant({
    required this.name,
    required this.address,
    required this.category,
    required this.imagePath,
    required this.description,
  });

  Restaurant.empty()
      : name = '',
        address = '',
        category = '',
        imagePath = '',
        description = '';

  List<Restaurant> getRestaurants() {
    List<Restaurant> restaurants = [
      Restaurant(
        name: "KFC Broadway",
        address: "122 Queen Street",
        category: "Fried Chicken, American",
        imagePath: "assets/images/kfc.jpeg",
        description: "KFC Fried Chicken",
      ),
      Restaurant(
        name: "Pizza Hut",
        address: "23 Queen Street",
        category: "Pasta, Italia",
        imagePath: "assets/images/pizzahut.jpg",
        description: "Greek House",
      ),
      Restaurant(
        name: "Rumah Padang",
        address: "Jl. Sudirman",
        category: "Rice, Indonesia",
        imagePath: "assets/images/mcd.jpg",
        description: "Nasi Padang",
      ),
      Restaurant(
        name: "Taco Bell",
        address: "Jl. Sudirman",
        category: "Taco, Mexico",
        imagePath: "assets/images/tacobell.jpg",
        description: "Tacos",
      ),
    ];

    return restaurants;
  }

  List<Restaurant> getMeals() {
    List<Restaurant> meals = [
      Restaurant(
        name: "Fried Chicken",
        address: "KFC Sudirman",
        category: "Fried Chicken, American",
        imagePath: "assets/images/fried_chicken.jpg",
        description: "KFC Fried Chicken",
      ),
      Restaurant(
        name: "Pasta Rice",
        address: "Pizza Hut",
        category: "Pasta, Italia",
        imagePath: "assets/images/rice.jpg",
        description: "Greek House",
      ),
      Restaurant(
        name: "Baked Wings",
        address: "Taco Bell Surabaya",
        category: "Chicken, Mexico",
        imagePath: "assets/images/baked_wings.jpg",
        description: "Nasi Padang",
      ),
    ];

    return meals;
  }
}
