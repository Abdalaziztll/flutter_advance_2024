// ignore_for_file: public_member_api_docs, sort_constructors_first

// ? Singltone Class Human
class Human {
  String name;
  Human._({
    required this.name,
  });
  static Human _human = Human._(name: "MHD");

  static Human getInstance() {
    return _human;
  }
}

// ? Builder Pattern class

class Pizza {
  int? onion;
  int? olive;
  int? cheese;

  Pizza._(PizzaBuilder pizzaBuilder) {
    onion = pizzaBuilder._onion;
    olive = pizzaBuilder._olive;
    cheese = pizzaBuilder._cheese;
  }
}

class PizzaBuilder {
  int? _onion;
  int? _olive;
  int? _cheese;
  PizzaBuilder();

  

 PizzaBuilder setOnion(int onionCount) {
    _onion = onionCount;
    return this;
  }

 PizzaBuilder  setOlive(int oliveCount) {
    _olive = oliveCount;
    return this;
  }

 PizzaBuilder setCheese(int cheeseCount) {
    _cheese = cheeseCount;
    return this;
  }

  Pizza build() {
    return Pizza._(this);
  }
}
