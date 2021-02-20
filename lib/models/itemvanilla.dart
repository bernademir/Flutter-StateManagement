class FlowerModel {
  final List<Flower> list = [];

  int get totalFlower => list.length;

  void addFlower(Flower flower) {
    list.add(flower);
  }
}

class Flower {
  final String color;
  final String type;

  Flower(this.color, this.type);
}
