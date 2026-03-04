import 'dart:collection';
import 'dart:mirrors';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  print("Welcome to dart");

  List<int> scores = [10, 20, 240, 89, 22];
  List<int> num = [100, 45, 55, 89, 46, 42];

  for (int i = 0; i < 5; i++) {
    print("the current value of I is $i");
  }

  print("--------------------------------");

  for (int x = 0; x <= scores.length; x++) {
    print("the value of x is $x");
  }
  print("--------------------------------");
  for (int score in scores) {
    if (score < 50) {
      print("the value of score is $score");
    } else {
      print("not applicable");
    }
    // print("the value of score is $score");
    print("--------------------------------");
  }

  for (int n in num.where((s) => s > 10)) {
    print("the numbers are $n");
  }

  Map<int, String> planets = {1: "mecury", 2: "venus", 3: "Neptune"};
  planets[2] = "earth";
  planets[6] = "pluto";
  print(planets.containsKey(7));
  print(planets.containsValue("pluto"));
  print(planets);
  print(planets[2]);
  print(planets.remove(2));

  var noodles = menuItem("Veggies", 10);
  var pizza = food(["chicken", "drinks"], "family pack", 56.90);
  var kebab = menuItem("plain kebab", 56.0);
  var asun = menuItem('jolof', 100.89);
  print("$noodles, $pizza, $kebab, $asun");

  var col = collection<menuItem>("menu", [noodles, pizza, kebab, asun]);
  var random = col.randomItem();
  print(random);

  // fetchPost().then((p) {
  //   print(p.title);
  //   print(p.userId);
  // });

  final post = await fetchPost();
  print(post.title);
  print(post.userId);
}

class menuItem {
  String title;
  double price;

  menuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }
}

class food extends menuItem {
  List<String> toppings;

  food(this.toppings, super.title, super.price);

  @override
  String format() {
    var formattedToppings = 'Contains:';
    for (final t in toppings) {
      formattedToppings = "$formattedToppings $t";
    }
    return "$price -> $title \n$formattedToppings";
  }
}

class collection<T> {
  String name;
  List<T> data;

  collection(this.name, this.data);

  T randomItem() {
    data.shuffle();
    return data[0];
  }
}

Future<post> fetchPost() async {
  var uri = Uri.https('jsonplaceholder.typicode.com', '/posts/1/');
  final response = await http.get(uri);
  // print(response.body);
  Map<String, dynamic> data = convert.jsonDecode(response.body);
  return post(data["title"], data["userId"]);
}

class post {
  String title;
  int userId;

  post(this.title, this.userId);
}
