dizerOla(String nome) {
  print('Olá, $nome');
}

class MinhaClasseDeTeste {
  dizerOlaDeNovo({Function f, String n = 'Humano'}) {
    return f(n);
  }
}

main() {
  MinhaClasseDeTeste m = MinhaClasseDeTeste();
  dizerOla('Luiz');
  m.dizerOlaDeNovo(f: dizerOla, n: 'Gustavo');

  // List<int> nums = [1, 2, 3, 4];
  // List<int> newList = [];
  // nums.forEach((num) {
  //   List<int> l = new List();
  //   l.add(num * 2);
  //   print(l);
  // });
}
