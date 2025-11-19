import 'package:flutter/material.dart';
import '../models/quote_model.dart';

class QuoteDetailScreen extends StatelessWidget {
  final Quote quote;
  const QuoteDetailScreen({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(), title: Text("Quote Explore")),

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quote.quote,
                style: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center),
            SizedBox(height: 20),
            Text("- ${quote.author}",
                style: TextStyle(fontSize: 20, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
