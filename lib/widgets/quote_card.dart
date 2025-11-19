import 'package:flutter/material.dart';
import '../models/quote_model.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  const QuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffEDEDED),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            quote.quote,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xff232323),
              height: 1.4,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "- ${quote.author}",
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xff8A8A8A),
            ),
          ),
        ],
      ),
    );
  }
}
