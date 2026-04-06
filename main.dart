void main() {
  List listOfFilter = ['ola', 'books', 'table'];
  listOfFilter.forEach((filter) {
    print('filter: $filter');
  });

  Map items = {1: "wole", 2: "dara"};
  items[3] = "Kenny";
  print('items: $items');
  items[2] = "lola";
  print('items: ${items[2]}');
  print('items: $items');

  Runes myEmoji = Runes('\u{1f607}');
  print(myEmoji);
  print(String.fromCharCodes(myEmoji));

  List NamesOfPlaces = ["Lagos", "Abuja", "PH", "IB", "Kwara"];
  for (int i = 0; i < NamesOfPlaces.length; i++) {
    print("Name of Places: ${NamesOfPlaces[i]}");
  }

  List ListOfNumbers = [10, 30, 28, 19];
  for (int nums in ListOfNumbers) {
    print("numbers includes : $nums");
  }

  List someNums = [20, 40, 18, 199, 50, 67, 11, 12];
  for (int nums in someNums) {
    if (nums < 30 || nums < 50) {
      continue;
    }
    print('Numbers : $nums');
  }

  BarDetails Newbar = new BarDetails("Barry J", 10);
  BarDetails secondbar = new BarDetails("AEO", 100);
  Newbar.Check();
  secondbar.Check();
  print(Newbar.name);
  print(Newbar.yoe);

  String coffee = "Black";
  switch (coffee) {
    case "orange":
      print("nahhh");
      break;
    case "brown":
      print("close");
      break;
    case "yellow":
      print("miles apart");
      break;
    default:
      print("the color is $coffee");
  }

  void orderPizza(int howManyPack) {
    print('pack: $howManyPack');
  }

  orderPizza(10);

  bool orderchickWizz(int howMany) {
    print('Quantity: $howMany');
    return true;
  }

  bool isOrderDone = orderchickWizz(6);
  print('isOrderDone : $isOrderDone');

  bool orderBaxooka([int? quantity]) {
    print("howmany : $quantity");
    bool orderd = false;
    if (quantity != null) {
      orderd = true;
    }
    return orderd;
  }

  bool isOrderComplete = orderBaxooka();
  print("OrderStatus: $isOrderComplete");
}

class BarDetails {
  String name;
  int yoe;

// constructor
  BarDetails(this.name, this.yoe);

  void Check() {
    print("Barista : $name, Experience: $yoe");
  }
}
