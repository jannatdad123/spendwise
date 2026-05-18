class Expense {
  final String title;
  final double amount;
  final String category;
  final String date;

  Expense({
    required this.title,
    required this.amount,
    required this.category,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'amount': amount,
      'category': category,
      'date': date,
    };
  }

  factory Expense.fromMap(Map map) {
    return Expense(
      title: map['title'],
      amount: map['amount'],
      category: map['category'],
      date: map['date'],
    );
  }
}