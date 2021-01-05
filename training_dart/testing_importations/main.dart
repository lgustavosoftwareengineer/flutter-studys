import './Hello.dart';
import '../functions.dart' as fc;
import '../classes.dart';

main() {
  Hello h = Hello();

  Hero hero = new Hero(
      fn: 'Luiz', ln: 'Gustavo', heroName: 'Super-Luiz', heroForce: 100);

  // To use i have to run this file with the --enable-asserts flag
  assert(hero.heroForce > 8000, 'The hero is too weak!');

  print(h.sayHello(name: hero.heroName));
}
