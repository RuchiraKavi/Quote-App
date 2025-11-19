import 'package:flutter/material.dart';
import '../models/quote_model.dart';
import '../services/quote_service.dart';

class QuoteProvider with ChangeNotifier {
  final QuoteService _service = QuoteService();

  Quote? randomQuote;
  bool isLoading = false;
  String? error;

  List<Quote> quoteList = [];
  bool isListLoading = false;

  Future<void> getRandomQuote() async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      randomQuote = await _service.fetchRandomQuote();
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> getQuotesList() async {
    isListLoading = true;
    notifyListeners();

    try {
      quoteList = await _service.fetchQuotesList();
    } catch (e) {
      error = e.toString();
    }

    isListLoading = false;
    notifyListeners();
  }
}
