import 'package:flutter/material.dart';
import 'qouts.dart';
import 'cards.dart';
void main() => runApp(MaterialApp(
      home: QoutsList(),
    ));

class QoutsList extends StatefulWidget {
  const QoutsList({Key? key}) : super(key: key);

  @override
  State<QoutsList> createState() => _QoutsListState();
}

class _QoutsListState extends State<QoutsList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),

        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: quotes.map((quote) => Qoutcard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}





