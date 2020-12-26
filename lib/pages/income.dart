import 'package:MoneyManager/components/alertcomponents.dart';
import 'package:MoneyManager/pages/homepage.dart';
import 'package:flutter/material.dart';

class Income extends StatefulWidget {
  @override
  _IncomeState createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Income"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        elevation: 1.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Add"),
                    content: Container(
                      height: 160.0,
                      child: AlertComponents(),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Balance"),
                subtitle: Text("\$720"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text("Expense"),
                subtitle: Text(
                  "\$230",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.deepOrange,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
