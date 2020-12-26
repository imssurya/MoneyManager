import 'package:MoneyManager/pages/category.dart';
import 'package:MoneyManager/pages/expense.dart';
import 'package:MoneyManager/pages/income.dart';
import 'package:flutter/material.dart';

class AlertComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.attach_money),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: MaterialButton(
                child: Text("Income"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Income()));
                },
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.money_off),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: MaterialButton(
                child: Text("Expence"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Expense()));
                },
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.dashboard),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: MaterialButton(
                child: Text("Category"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Category()));
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
