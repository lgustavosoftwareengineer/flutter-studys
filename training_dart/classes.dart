abstract class Person {
  String fn;
  String ln;

  Person(String fn, String ln) {
    this.fn = fn;
    this.ln = ln;
  }
}

class Programmer extends Person {
  String _mainTech;
  // Parametros de uma função não podem começar com um underscore
  Programmer(String fn, String ln, String _mainTech) : super(fn, ln);

  get getMainTech {
    return '$_mainTech';
  }

  set setMainTech(value) {
    this._mainTech = value;
  }

  String sayTheMainTech() {
    return this._mainTech;
  }

  verifyingTheTech() {
    if (this._mainTech == "Dart") {
      throw FormatException("Is'n a valid tech");
    } else {
      return "It's ok";
    }
  }
}

class Hero extends Person with Swimmer {
  String heroName;
  int heroForce;

  Hero({String fn, String ln, this.heroName, this.heroForce}) : super(fn, ln);
}

/*
O mixin é o equivalente a interface no Dart. 
Ele possibilita adicionarmos um comportamente e estados a uma classe
*/
mixin Swimmer {
  ///  The action of swim.
  ///
  /// Param: [String name] => The name of who is swimming
  String swimming(String name) {
    return '$name está a nadar';
  }
}

main() {
  Programmer pr = Programmer('Luiz', 'Gustavo', 'Frontend');
  //Hero h = Hero('Luiz', 'Gustavo', 'SuperLuiz', 100);
  //print(h.swimming(h.heroName));
}
