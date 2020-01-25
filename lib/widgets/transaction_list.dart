import 'package:flutter/material.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransaction;
  final Function deleteTx;
  TransactionList(this.userTransaction, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
//      height: 350,
      child: (userTransaction.isEmpty)
          ? Column(
              children: <Widget>[
                Text(
                  'No Transaction added yet!',
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(height: 10),
                Container(
                  height: 200,
                  child: Image.asset('assets/images/waiting.png',
                      fit: BoxFit.cover),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Text(
                          '₹ ${userTransaction[index].amount.toString()}',
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ),
                      title: Text(
                        userTransaction[index].title,
                        style: Theme.of(context).textTheme.title,
                      ),
                      subtitle: Text(
                        DateFormat.yMMMd().format(userTransaction[index].date),
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black38),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        color: Theme.of(context).errorColor,
                        onPressed: () => deleteTx(userTransaction[index].id),
                      ),
                    ),
                  ),
                );
              },
              itemCount: userTransaction.length,
              shrinkWrap: true,
            ),
    );
  }
}

//child: Card(
//child: Row(
//children: <Widget>[
//Container(
//decoration: BoxDecoration(
//border: Border.all(
//width: 2,
//color: Theme.of(context).primaryColor,
//),
//),
//alignment: Alignment.center,
//margin: EdgeInsets.symmetric(
//vertical: 10, horizontal: 15),
//padding: EdgeInsets.all(10),
//child: Text(
//'₹ ${userTransaction[index].amount}',
//style: TextStyle(
//fontWeight: FontWeight.bold,
//fontSize: 20,
//color: Theme.of(context).primaryColor,
//),
//),
//),
//Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Text(
//userTransaction[index].title,
//style: Theme.of(context).textTheme.title,
//),
//Text(
//DateFormat.yMMMd()
//.format(userTransaction[index].date),
//style: TextStyle(
//fontWeight: FontWeight.w500,
//color: Colors.grey),
//),
//],
//)
//],
//),
//),
