import 'package:flutter/material.dart';
import 'package:movies_app/search/view_model/search_view_model.dart';
import 'package:movies_app/tabs/bookmark_tab.dart';
import 'package:movies_app/tabs/browse_tab.dart';
import 'package:movies_app/tabs/home_tab.dart';
import 'package:movies_app/search/view/screens/search_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    BrowseTab(),
    BookmarkTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchViewModel(),
      child: Scaffold(
        backgroundColor: Color(0xFF1E1E1E),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFFFFA90A),
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xFF1A1A1A),
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/search-2.png')),
                label: 'HOME'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/search-2.png')),
                label: 'SEARCH'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/search-2.png')),
                label: 'BROWSE'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/search-2.png')),
                label: 'WATCHLIST'),
          ],
        ),
      ),
    );
  }
}
