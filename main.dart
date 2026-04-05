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
}
