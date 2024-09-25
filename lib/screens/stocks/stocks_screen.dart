import 'package:flutter/material.dart';
import 'package:simba/screens/stocks/stock_detail/stock_details_page.dart';
import 'package:simba/widgets/_widgets.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class StocksPage extends StatefulWidget {
  const StocksPage({super.key});

  @override
  _StocksPageState createState() => _StocksPageState();
}

class _StocksPageState extends State<StocksPage> {
  int _selectedTabIndex = 0;

  List<Map<String, dynamic>> _stocks = [];

  @override
  void initState() {
    super.initState();
    fetchStocks();
  }

  Future<void> fetchStocks() async {
    final url = Uri.parse('http://10.0.2.2:5000/historical_data');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        print('Response body: ${response.body}');
        final Map<String, dynamic> data = jsonDecode(response.body);

        List<Map<String, dynamic>> stocks = [];

        data.forEach((symbol, history) {
          // Pobierz wszystkie daty i sortuj je
          final dates = history.keys.toList()..sort();

          // Pobierz ceny zamknięcia (Close) i upewnij się, że są one typu double
          final List<double> closePrices = dates.map((date) {
            final price = history[date]['Close'];
            // Upewnij się, że cena jest typu double
            if (price is num) {
              return price.toDouble();
            }
            return 0.0; // Wartość domyślna, jeśli cena jest innego typu
          }).toList();

          // Sprawdź, czy closePrices zawiera dane
          if (closePrices.isNotEmpty) {
            stocks.add({
              "symbol": symbol,
              "company": symbol, // Możesz tu dodać pełną nazwę firmy
              "price": closePrices.last, // Ostatnia cena zamknięcia
              "change": closePrices.last - closePrices.first, // Zmiana ceny
              "icon": Icons.business, // Możesz dodać odpowiednią ikonę dla każdej firmy
              "liked": false,
            });
          }
        });

        setState(() {
          _stocks = stocks;
        });
      } else {
        throw Exception('Failed to load stocks');
      }
    } catch (error) {
      print('Error fetching stocks: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const LtSearchBar(),
          const SizedBox(height: 20),
          CustomTabBar(
            onTabSelected: (index) {
              setState(() {
                _selectedTabIndex = index;
              });
            },
          ),
          Expanded(
            child: _stocks.isEmpty
                ? Center(child: Text('No stocks available'))
                : ListView.builder(
                    itemCount: _stocks.length,
                    itemBuilder: (context, index) {
                      final stock = _stocks[index];
                      final isLast = index == _stocks.length - 1;

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StockDetailPage(
                                symbol: stock['symbol'],
                                company: stock['company'],
                                price: stock['price'],
                                change: stock['change'],
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: isLast ? 16.0 : 0.0,
                          ),
                          child: Column(
                            children: [
                              StockTile(
                                companyName: stock['symbol'],
                                companyFullName: stock['company'],
                                price: stock['price'],
                                change: stock['change'],
                                iconData: stock['icon'],
                                isLiked: stock['liked'],
                                isFirst: index == 0,
                                isLast: isLast,
                                isLikedTabSelected: _selectedTabIndex == 1,
                                onLikePressed: () {
                                  setState(() {
                                    final stockIndex = _stocks.indexOf(stock);
                                    _stocks[stockIndex]['liked'] = !_stocks[stockIndex]['liked'];
                                  });
                                },
                              ),
                              if (!isLast)
                                const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.black,
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
