import 'package:flutter/material.dart';
import 'package:simba/screens/stocks/stock_detail/stock_details_page.dart';
import 'package:simba/widgets/custom_tab_button.dart';
import 'package:simba/widgets/list_tiles/news_tile.dart';
import 'package:simba/widgets/search_bar.dart';
import 'package:simba/widgets/list_tiles/stock_tile.dart';

import '../../widgets/triple_tab_button.dart';
import 'news_detail/news_details_page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int _selectedTabIndex = 0;

  final List<Map<String, dynamic>> _news = [
    {
      'image': 'assets/images/crypto.jpg',
      'title': 'Cryptocurrency',
      'saved': true,
      'time': '12 h ago'
      // sample like status
    },
    {'image': 'assets/images/bus.jpg', 'title': 'Public Transport', 'saved': false, 'time': '14 h ago',},
    {'image': 'assets/images/gps.jpg', 'title': 'Navigation', 'saved': true, 'time': '2 h ago',},
    {
      'image': 'assets/images/capitol.jpg',
      'title': 'Politics',
      'saved': false,
      'time': '1 h ago',
    },
    {
      'image': 'assets/images/casino.jpg',
      'title': 'Casino',
      'saved': true,
      'time': '3 h ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> displayedNews = _news.where((newsItem) {
      if (_selectedTabIndex == 0) {
        return true;
      } else if (_selectedTabIndex == 1) {
        return newsItem['saved'] == true;
      }
      return false;
    }).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const LtSearchBar(),
          const SizedBox(height: 20),
          CustomTripleTabBar(
            onTabSelected: (index) {
              setState(() {
                _selectedTabIndex = index;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: displayedNews.length,
              itemBuilder: (context, index) {
                final news = displayedNews[index];
                final isLast = index == displayedNews.length - 1;

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        // Navigate to the detailed news page here
                        builder: (context) => NewsDetailPage(
                          title: news['title']!,
                          image: news['image']!,
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
                        NewsTile(
                          newsAgency: news['title'],
                          newsSummary: "testowy string,angahikhaaignankjoanfknsbuaibnfHIA\nankvanniweualosf",
                          timeSincePublication: '12',
                          imagePath: news['image'],
                          isSaved: news['saved'],
                          isForYou: false,
                          isFirst: index == 0,
                          isLast: isLast,
                          isForYouTabSelected: _selectedTabIndex == 1,
                          isSavedTabSelected: _selectedTabIndex == 2,
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
