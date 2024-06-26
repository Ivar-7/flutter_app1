import 'package:flutter/material.dart';
import 'package:flutter_app1/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        final expense = expenses[index];
        return Column(
          children: [
            ListTile(
              title: Text(expense.title),
              subtitle: Text((expense.date).toString()),
              leading: Text(expense.category.toString()),
              trailing: Text('\$${expense.amount.toString()}'),
            ),
            const Divider(),
          ],
        );
      },
    );
  }
}
