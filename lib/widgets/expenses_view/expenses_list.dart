import 'package:flutter/material.dart';
import 'package:flutter_app1/models/expense.dart';
import 'package:flutter_app1/widgets/expenses_view/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        final expense = expenses[index];
        return ExpenseItem(expense: expense);
      },
    );
  }
}
