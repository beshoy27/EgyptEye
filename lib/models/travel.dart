class Travel {
  //model variables
  final String name;
  final String description;
  final int duration;
  final String location;
  final double rating;
  final int distance;
  final double cost;
  final List<String> imageUrl;

  //model constuctor
  Travel(this.name, this.duration, this.description, this.location, this.rating,
      this.distance, this.imageUrl, this.cost);

  //List of travel items
  static List<Travel> getTravelItems() {
    final List<Travel> _travelList = [
      Travel(
          'Baron Palace',
          4,
          'The building where the heights meets the golden touches',
          'Cairo, Egypt',
          4.6,
          3,
          ['assets/images/img1.jpg', 'assets/images/thumbnail1.jpg'],
          230),
      Travel(
          'Pyramids of Giza',
          5,
          'Are you ready to visit one of the most popular sights worldwide? If yes, then head to the Great Pyramids of Giza. It’s not a surprise that it’s one of the best places to visit in Cairo as you will view matchless sights and know exciting information. ',
          'Haram, Giza',
          4.3,
          6,
          ['assets/images/img2.webp', 'assets/images/thumbnail2.png'],
          432),
      Travel(
          'Old and Coptic Cairo',
          3,
          'If you love exploring the ancient religions and civilizations, then Old Cairo is the place for you. It’s also known as Islamic Cairo, although Coptic Cairo is part of it too. ',
          'Cairo, Egypt',
          4.5,
          8,
          ['assets/images/img3.webp', 'assets/images/thumbnail3.jpg'],
          283),
      Travel(
          'Cairo Tower',
          3,
          'How about seeing the beauty of Cairo at a height of 600 feet? This sounds exhilarating; you can enjoy this at Cairo Tower which is among the top tourist attractions in Cairo. You will see the stunning view of the whole city from above, which is fascinating. ',
          'Zamalek, Cairo',
          4.2,
          16,
          ['assets/images/img4.webp', 'assets/images/thumbnail4.jpg'],
          389),
      Travel(
          'Khan El Khalili',
          2,
          'This awesome spot consists of small vintage alleys and streets, which are perfect for strolling. Besides, Khan El Kahlili includes many open-air bazaars, which are filled with unique items like perfumes, spices, souvenirs, and jewelry.',
          'Al Gamaleya, Cairo',
          4.8,
          21,
          ['assets/images/img6.jpg', 'assets/images/thumbnail5.jpg'],
          534),
    ];
    return _travelList;
  }

//Get the nearest list items (Those whose distance is less than 10kms
  static List<Travel> getNearestItems() {
    List<Travel> _travelList = Travel.getTravelItems();
    return _travelList.where((element) => element.distance < 10).toList();
  }
}
