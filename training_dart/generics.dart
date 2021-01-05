List<int> a = [1, 2, 3];

abstract class Thing<V> {
  V getByName();

  void setByName(V value);
}

class Person extends Thing {
  String name;

  @override
  getByName() {
    return this.name;
  }

  @override
  void setByName(value) {
    this.name = value;
  }
}

main() {
  Person p = new Person();
  p.setByName('Luiz');

  print(p.getByName());
}

/**
 * List<int> a = [1, 2, 3];

abstract class Thing<V> {
  V getByName();

  void setByName(V value);
}

class Person extends Thing {
  int num;

  @override
  getByName() {
    return this.num;
  }

  @override
  void setByName(value) {
    this.num = value;
  }
}

main() {
  Person p = new Person();
  p.setByName(1);

  print(p.getByName());
}

 */