import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quote_provider.dart';
import '../widgets/quote_card.dart';
import 'quote_detail_screen.dart';
import 'home_screen.dart';

class QuoteListScreen extends StatefulWidget {
  @override
  State<QuoteListScreen> createState() => _QuoteListScreenState();
}

class _QuoteListScreenState extends State<QuoteListScreen> {

  @override
  void initState() {
    super.initState();
    Provider.of<QuoteProvider>(context, listen: false).getQuotesList();
  }

  int _navIndex = 1; // Quotes selected

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuoteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          "Quotes",
          style: TextStyle(
            color: Color(0xff6B6B6B),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      backgroundColor: Colors.white,

      body: provider.isListLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: ListView.separated(
                itemCount: provider.quoteList.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (_, i) {
                  final q = provider.quoteList[i];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => QuoteDetailScreen(quote: q)),
                      );
                    },
                    child: QuoteCard(quote: q),
                  );
                },
              ),
            ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navIndex,
        onTap: (index) {
          if (index == 0) {
            // Navigate to Home
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => HomeScreen()),
            );
          }
        },
        selectedItemColor: Color(0xff4DA3FF),
        unselectedItemColor: Colors.grey, 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_quote),
            label: "Quotes",
          ),
        ],
      ),
    );
  }
}
