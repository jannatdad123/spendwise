import 'package:hive/hive.dart';

class HiveService {
  final Box box = Hive.box('expenses');

  List<Map> getExpenses() {
    return box.values.map((e) => Map.from(e)).toList();
  }

  void addExpense(Map expense) {
    box.add(expense);
  }

  void updateExpense(int index, Map expense) {
    box.putAt(index, expense);
  }

  void deleteExpense(int index) {
    box.deleteAt(index);
  }
}