import 'package:flutter/material.dart';
import 'qouts.dart';


class Qoutcard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  Qoutcard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[900]),
            ),
            SizedBox(height: 8.0,),
            TextButton.icon(
                onPressed: () {
                  delete();
                },
                label: Text('Delete quotes'),
                icon: Icon(Icons.delete),


            )
          ],
        ),
      ),
    );
  }
}
