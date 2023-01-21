// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecommendedPlaceModel {
  final String image;
  final double rating;
  final String location;
  RecommendedPlaceModel({
    required this.image,
    required this.rating,
    required this.location,
  });
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
    image: "assets/places/place5.jpg",
    rating: 4.5,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/places/place4.jpg",
    rating: 4.6,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/places/place3.jpg",
    rating: 4.7,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/places/place2.jpg",
    rating: 4.8,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/places/place1.jpg",
    rating: 4.9,
    location: "St. Regis Bora Bora",
  ),
];
