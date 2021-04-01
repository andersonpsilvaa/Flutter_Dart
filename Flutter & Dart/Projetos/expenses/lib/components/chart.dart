import 'package:expenses/components/chart_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransation;

  Chart(this.recentTransation);

  List<Map<String, Object>> get groupedTransations {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );

      double totalSum = 0.00;

      for (var i = 0; i < recentTransation.length; i++) {
        bool sameDay = recentTransation[i].date.day == weekDay.day;
        bool sameMonth = recentTransation[i].date.month == weekDay.month;
        bool sameYear = recentTransation[i].date.year == weekDay.year;

        if (sameDay && sameMonth && sameYear) {
          totalSum += recentTransation[i].value;
        }
      }

      return {
        'day': DateFormat.E().format(weekDay)[0],
        'value': totalSum,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: groupedTransations.map((tr) {
          return ChartBar(
            label: tr['day'],
            value: tr['value'],
            percentage: 0.50,
          );
        }).toList(),
      ),
    );
  }
}
