class HomeModel {
  int? id;
  dynamic price;
  String? title, description, category, image;
  RatingModel? rating;

  HomeModel(
      {this.id,
      this.title,
      this.description,
      this.category,
      this.image,
      this.price,
      this.rating});

  factory HomeModel.mapToModel(Map m1) {
    return HomeModel(
        id: m1['id'],
        title: m1['title'],
        description: m1['description'],
        category: m1['category'],
        image: m1['image'],
        price: m1['price'],
        rating: RatingModel.mapToModel(m1['rating']));
  }
}

class RatingModel {
  dynamic rate;
  int? count;

  RatingModel({this.rate, this.count});

  factory RatingModel.mapToModel(Map m1) {
    return RatingModel(
      count: m1['count'],
      rate: m1['rate'],
    );
  }
}
