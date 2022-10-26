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
}

final products = [
  Item(
      id: "Codepur001",
      name: "IPhone 12 Pro",
      desc: "Apple iphone 12th generation",
      price: 900,
      color: "#33505a",
      image: "")
];
