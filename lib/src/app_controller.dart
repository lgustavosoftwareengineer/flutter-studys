import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier {
  bool isDarkTheme = false;

  /// Utilizando o Design pattern singleton para assim poder
  /// utilizar a mesma instancia da classe em diferentes arquivos.
  /// Pois para que eu tenha uma constância das informações que eu
  /// estou trabalhando em diferentes widgets eu devo utizar a mesma
  /// instancia desse controller.
  static AppController instance = AppController();

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
