import 'package:MoneyManager/components/alertcomponents.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final size = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter cash app"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        elevation: 1.0,
        actions: <Widget>[
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
              })
        ],
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: ListTile(
              title: Icon(
                Icons.account_balance_wallet,
                size: 64.0,
                color: Colors.grey,
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: size / 3.5),
                child: Text(
                  "waste no money!",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
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
