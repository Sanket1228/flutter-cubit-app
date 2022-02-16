class Document {
  String name;
  String desc;
  int price;
  int stars;
  // int people;
  int selected_people;
  String img;
  String location;

  Document(
      {required this.name,
      required this.desc,
      required this.price,
      required this.stars,
      required this.selected_people,
      required this.img,
      required this.location});

  factory Document.fromJson(Map<String, dynamic> json) {
    return Document(
        name: json["name"],
        desc: json["description"],
        price: json["price"],
        stars: json['stars'],
        selected_people: json["selected_people"],
        img: json["img"],
        location: json["location"]);
  }
}
