class CatelogModel {
  static List<Item> items = [
    Item(
        id: "Codepur001",
        name: "iPhone  12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "data:image/jpeg;base64,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")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
