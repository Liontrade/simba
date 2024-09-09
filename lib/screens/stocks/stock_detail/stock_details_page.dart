import 'package:flutter/material.dart';

class StockDetailPage extends StatelessWidget {
  final String symbol;
  final String company;
  final double price;
  final double change;

  StockDetailPage({
    required this.symbol,
    required this.company,
    required this.price,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(company),
        actions: [
          IconButton(
            icon: const Icon(Icons.star_border),
            onPressed: () {
              // Handle favourite action
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Price and change card
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$$price',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${change > 0 ? '+' : ''}$change%',
                      style: TextStyle(
                        color: change > 0 ? Colors.green : Colors.red,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Maximum: \$199.62'),
                    Text('Minimum: \$164.08'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),

          // Stock chart (use a placeholder or chart library)
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Center(child: Text("Chart goes here")),
          ),
          SizedBox(height: 16),

          // Time range buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeRangeButton('24H', selected: false),
              _buildTimeRangeButton('1W', selected: false),
              _buildTimeRangeButton('1M', selected: true),
              _buildTimeRangeButton('1Y', selected: false),
              _buildTimeRangeButton('5Y', selected: false),
              _buildTimeRangeButton('ALL', selected: false),
            ],
          ),
          SizedBox(height: 16),

          // About section
          Text(
            'About',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '$company is an American multinational corporation headquartered in Cupertino, California...',
          ),
          SizedBox(height: 16),

          // News section
          Text(
            'News',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),

          // News items
          _buildNewsItem('Carscoops', 'Apple Inc New iPhone...', '18 h ago', 'assets/iphone.png'),
          _buildNewsItem('The Verge', 'New Apple Watch is going...', '17 h ago', 'assets/watch.png'),
          _buildNewsItem('Yahoo', 'Apple AirPods new packaging...', '1 h ago', 'assets/airpods.png'),
        ],
      ),
    );
  }

  // Build individual time range button
  Widget _buildTimeRangeButton(String text, {required bool selected}) {
    return GestureDetector(
      onTap: () {
        // Handle time range change
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? Colors.orangeAccent : Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ]
              : [],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  // Build individual news item
  Widget _buildNewsItem(String source, String title, String time, String image) {
    return ListTile(
      leading: Image.asset(image, width: 50, height: 50),
      title: Text(title),
      subtitle: Text(source + ' • ' + time),
      trailing: IconButton(
        icon: Icon(Icons.bookmark_border),
        onPressed: () {
          // Handle bookmark action
        },
      ),
    );
  }
}
