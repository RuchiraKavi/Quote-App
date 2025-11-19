import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quote_provider.dart';
import 'quote_list_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<QuoteProvider>(context, listen: false).getRandomQuote();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuoteProvider>(context);

    return Scaffold(
      // -------------------------
      // App Bar
      // -------------------------
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          "Quote of the Day",
          style: TextStyle(
            color: Color(0xff6B6B6B),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // -------------------------
      // Bottom Navigation Bar
      // -------------------------
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (i) {
          if (i == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => QuoteListScreen()),
            );
          }
        },
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

      backgroundColor: Colors.white,

      // -------------------------
      // Body with centered quote
      // -------------------------
      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : provider.error != null
              ? Center(child: Text("Error: ${provider.error}"))
              : provider.randomQuote == null
                  ? const Center(child: Text("No quote found"))
                  : Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Quote text
                            Text(
                              provider.randomQuote!.quote,
                              style: const TextStyle(
                                fontSize: 24,
                                fontStyle: FontStyle.italic,
                                color: Colors.black87,
                                height: 1.4,
                              ),
                              textAlign: TextAlign.center,
                            ),

                            const SizedBox(height: 18),

                            // Author text
                            Text(
                              "- ${provider.randomQuote!.author}",
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
    );
  }
}
