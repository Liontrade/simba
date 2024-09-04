import 'package:flutter/material.dart';
import 'package:simba/style/_style.dart';
import 'package:simba/widgets/buttons/custom_toggle_button.dart';
import 'package:simba/widgets/buttons/test_button.dart';

class StocksPage extends StatelessWidget {
  final List<Map<String, dynamic>> stocks = [
    {
      "symbol": "AAPL",
      "company": "Apple Inc",
      "price": 186.88,
      "change": 10.57,
      "icon": Icons.apple,
      "liked": false,
    },
    {
      "symbol": "TSLA",
      "company": "Tesla Inc",
      "price": 173.74,
      "change": 7.16,
      "icon": Icons.electric_car,
      "liked": false,
    },
    {
      "symbol": "META",
      "company": "Meta Inc",
      "price": 465.78,
      "change": -5.62,
      "icon": Icons.mediation,
      "liked": false,
    },
    {
      "symbol": "AMZN",
      "company": "Amazon Inc",
      "price": 181.05,
      "change": 2.53,
      "icon": Icons.shopping_cart,
      "liked": false,
    },
    {
      "symbol": "MSFT",
      "company": "Microsoft Corp",
      "price": 427.00,
      "change": 4.39,
      "icon": Icons.computer,
      "liked": false,
    },
    {
      "symbol": "AAPL",
      "company": "Apple Inc",
      "price": 186.88,
      "change": 10.57,
      "icon": Icons.apple,
      "liked": false,
    },
    {
      "symbol": "TSLA",
      "company": "Tesla Inc",
      "price": 173.74,
      "change": 7.16,
      "icon": Icons.electric_car,
      "liked": false,
    },
    {
      "symbol": "META",
      "company": "Meta Inc",
      "price": 465.78,
      "change": -5.62,
      "icon": Icons.mediation,
      "liked": false,
    },
    {
      "symbol": "AMZN",
      "company": "Amazon Inc",
      "price": 181.05,
      "change": 2.53,
      "icon": Icons.shopping_cart,
      "liked": false,
    },
    {
      "symbol": "MSFT",
      "company": "Microsoft Corp",
      "price": 427.00,
      "change": 4.39,
      "icon": Icons.computer,
      "liked": false,
    },
    {
      "symbol": "AAPL",
      "company": "Apple Inc",
      "price": 186.88,
      "change": 10.57,
      "icon": Icons.apple,
      "liked": false,
    },
    {
      "symbol": "TSLA",
      "company": "Tesla Inc",
      "price": 173.74,
      "change": 7.16,
      "icon": Icons.electric_car,
      "liked": false,
    },
    {
      "symbol": "META",
      "company": "Meta Inc",
      "price": 465.78,
      "change": -5.62,
      "icon": Icons.mediation,
      "liked": false,
    },
    {
      "symbol": "AMZN",
      "company": "Amazon Inc",
      "price": 181.05,
      "change": 2.53,
      "icon": Icons.shopping_cart,
      "liked": false,
    },
    {
      "symbol": "MSFT",
      "company": "Microsoft Corp",
      "price": 427.00,
      "change": 4.39,
      "icon": Icons.computer,
      "liked": false,
    },
    // Add more stocks as necessary
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(),
        CustomToggleButton(),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            itemCount: stocks.length,
            itemBuilder: (context, index) {
              final stock = stocks[index];
              return Column(
                children: [
                  ListTile(
                    leading: Icon(stock['icon'], size: 40),
                    title: Text(stock['symbol'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    subtitle: Text(stock['company']),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$${stock['price']}",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "${stock['change'] > 0 ? '+' : ''}${stock['change']}%",
                          style: TextStyle(color: stock['change'] > 0 ? Colors.green : Colors.red),
                        ),
                      ],
                    ),
                    onTap: () {},
                    onLongPress: () {
                      // Handle liking the stock here
                    },
                  ),
                  Divider(
                    height: 2,
                    thickness: 2, // Make the divider thicker
                    color: Colors.black, // Make the divider black
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
