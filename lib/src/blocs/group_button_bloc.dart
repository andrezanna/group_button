import 'package:flutter/cupertino.dart';

class GroupButtonBloc extends ChangeNotifier {
  int _selectedIndex = 0;

  Map<int, bool> _selectedIndexes = {};

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int val) {
    _selectedIndex = val;
    notifyListeners();
  }

  Map<int, bool> get selectedIndexes => _selectedIndexes;

  void selectButton(int index, bool isRadio) {
    if (isRadio)
      _selectedIndex = index;
    else {
      if (!_selectedIndexes.containsKey(index))
        _selectedIndexes[index] = true;
      else
        _selectedIndexes[index] = !_selectedIndexes[index];
    }
    notifyListeners();
  }
}
