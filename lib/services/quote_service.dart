import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/quote_model.dart';

class QuoteService {

  Future<Quote> fetchRandomQuote() async {
    final res = await http.get(Uri.parse("https://dummyjson.com/quotes/random"));
    if (res.statusCode == 200) {
      return Quote.fromJson(jsonDecode(res.body));
    }
    throw Exception("Failed to load random quote");
  }

  Future<List<Quote>> fetchQuotesList() async {
    final res = await http.get(Uri.parse("https://dummyjson.com/quotes"));
    if (res.statusCode == 200) {
      final data = jsonDecode(res.body)['quotes'] as List;
      return data.map((e) => Quote.fromJson(e)).toList();
    }
    throw Exception("Failed to load quotes list");
  }
}
