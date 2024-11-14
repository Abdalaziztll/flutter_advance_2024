import 'package:design_pattern/design_pattern.dart';

void main() {
  Human human = Human.getInstance();
  human.name = "Tarek";
  Human human1 = Human.getInstance();
  print(human1.name);

  if (human1 == human) {
    print("YES");
  } else {
    print("NOOO");
  }

  Pizza fourSeason = PizzaBuilder()
    .setCheese(10)
    .setOlive(20)
    .setOnion(50)
    .build();

    print(fourSeason.olive);
}
