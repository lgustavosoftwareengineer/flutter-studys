import './classes.dart' as cls;

main() {
  try {
    cls.Programmer p = new cls.Programmer('Luiz', 'Gustavo', 'Dart');
    print(p.verifyingTheTech());
  } catch (e) {
    print(e);
  }
}
