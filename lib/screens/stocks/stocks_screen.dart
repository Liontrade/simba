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
//
// class _StocksPageState extends State<StocksPage> {
//   int _selectedTabIndex = 0;
//
//   final List<Map<String, dynamic>> _stocks = [
//     {
//       "symbol": "AAPL",
//       "company": "Apple Inc",
//       "price": 186.88,
//       "change": 10.57,
//       "icon": Icons.apple,
//       "liked": false,
//     },
//     {
//       "symbol": "TSLA",
//       "company": "Tesla Inc",
//       "price": 173.74,
//       "change": 7.16,
//       "icon": Icons.electric_car,
//       "liked": true,
//     },
//     {
//       "symbol": "META",
//       "company": "Meta Inc",
//       "price": 465.78,
//       "change": -5.62,
//       "icon": Icons.mediation,
//       "liked": false,
//     },
//     {
//       "symbol": "AMZN",
//       "company": "Amazon Inc",
//       "price": 181.05,
//       "change": 2.53,
//       "icon": Icons.shopping_cart,
//       "liked": true,
//     },
//     {
//       "symbol": "MSFT",
//       "company": "Microsoft Corp",
//       "price": 427.00,
//       "change": 4.39,
//       "icon": Icons.computer,
//       "liked": false,
//     },
//     {
//       "symbol": "AAPL",
//       "company": "Apple Inc",
//       "price": 186.88,
//       "change": 10.57,
//       "icon": Icons.apple,
//       "liked": false,
//     },
//     {
//       "symbol": "TSLA",
//       "company": "Tesla Inc",
//       "price": 173.74,
//       "change": 7.16,
//       "icon": Icons.electric_car,
//       "liked": false,
//     },
//     {
//       "symbol": "META",
//       "company": "Meta Inc",
//       "price": 465.78,
//       "change": -5.62,
//       "icon": Icons.mediation,
//       "liked": false,
//     },
//     {
//       "symbol": "AMZN",
//       "company": "Amazon Inc",
//       "price": 181.05,
//       "change": 2.53,
//       "icon": Icons.shopping_cart,
//       "liked": false,
//     },
//     {
//       "symbol": "MSFT",
//       "company": "Microsoft Corp",
//       "price": 427.00,
//       "change": 4.39,
//       "icon": Icons.computer,
//       "liked": false,
//     },
//     {
//       "symbol": "AAPL",
//       "company": "Apple Inc",
//       "price": 186.88,
//       "change": 10.57,
//       "icon": Icons.apple,
//       "liked": false,
//     },
//     {
//       "symbol": "TSLA",
//       "company": "Tesla Inc",
//       "price": 173.74,
//       "change": 7.16,
//       "icon": Icons.electric_car,
//       "liked": false,
//     },
//     {
//       "symbol": "META",
//       "company": "Meta Inc",
//       "price": 465.78,
//       "change": -5.62,
//       "icon": Icons.mediation,
//       "liked": false,
//     },
//     {
//       "symbol": "AMZN",
//       "company": "Amazon Inc",
//       "price": 181.05,
//       "change": 2.53,
//       "icon": Icons.shopping_cart,
//       "liked": false,
//     },
//     {
//       "symbol": "MSFT",
//       "company": "Microsoft Corp",
//       "price": 427.00,
//       "change": 4.39,
//       "icon": Icons.computer,
//       "liked": false,
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> displayedStocks = _stocks.where((stock) {
//       if (_selectedTabIndex == 0) {
//         return true;
//       } else if (_selectedTabIndex == 1) {
//         return stock['liked'];
//       }
//       return false;
//     }).toList();
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Column(
//         children: [
//           const SizedBox(height: 30),
//           const LtSearchBar(),
//           const SizedBox(height: 20),
//           CustomTabBar(
//             onTabSelected: (index) {
//               setState(() {
//                 _selectedTabIndex = index;
//               });
//             },
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: displayedStocks.length,
//               itemBuilder: (context, index) {
//                 final stock = displayedStocks[index];
//                 final isLast = index == displayedStocks.length - 1;
//
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => StockDetailPage(
//                           symbol: stock['symbol'],
//                           company: stock['company'],
//                           price: stock['price'],
//                           change: stock['change'],
//                         ),
//                       ),
//                     );
//                   },
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                       bottom: isLast ? 16.0 : 0.0,
//                     ),
//                     child: Column(
//                       children: [
//                         StockTile(
//                           companyName: stock['symbol'],
//                           companyFullName: stock['company'],
//                           price: stock['price'],
//                           change: stock['change'],
//                           iconData: stock['icon'],
//                           isLiked: stock['liked'],
//                           isFirst: index == 0,
//                           isLast: isLast,
//                           isLikedTabSelected: _selectedTabIndex == 1,
//                           onLikePressed: () {
//                             setState(() {
//                               // Find the index in the _stocks list and toggle liked
//                               final stockIndex = _stocks.indexOf(stock);
//                               _stocks[stockIndex]['liked'] = !_stocks[stockIndex]['liked'];
//                             });
//                           },
//                         ),
//                         if (!isLast)
//                           const Divider(
//                             height: 1,
//                             thickness: 1,
//                             color: Colors.black,
//                           ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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
        final Map<String, dynamic> data = jsonDecode(response.body);

        // Pobierz wszystkie klucze (daty) i sortuj je
        final dates = data.keys.toList()..sort();

        // Pobierz wartości zamknięcia
        final List<double> closePrices = dates
            .map((date) => data[date]['Close'] as double)
            .toList();

        setState(() {
          _stocks = [
            {
              "symbol": "AAPL",
              "company": "Apple Inc",
              "price": closePrices.last, // Ostatnia cena zamknięcia
              "change": closePrices.last - closePrices.first, // Zmiana ceny
              "icon": Icons.apple,
              "liked": false,
            },
          ];
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
            child: ListView.builder(
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
                              // Find the index in the _stocks list and toggle liked
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
