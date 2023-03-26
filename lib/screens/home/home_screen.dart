import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruits.dart';
// import 'package:fruit_tiedot/screens/fruitdetails/fruit_detail_screen.dart';
// import 'components/fruit_card.dart';
import 'components/fruit_card_gridview.dart';
import 'components/home_searchbar.dart';
import 'components/tabbar_categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _searchController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  void _makeFavorite(Fruit fruit) {
    setState(() => fruit.toggleFavorite());
  }

  void _resetTabBar(_) {
    setState(() {
      _searchController.clear();
      _searchFruits = fruits;
    });
  }

  void _refreshData() {
    setState(() {});
  }

  @override
  void dispose() {
    _searchController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  List<dynamic> _searchFruits = fruits;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: HomeSearchBar(
          searchController: _searchController,
          searchForIt: (text) {
            _searchFruits = fruits
                .where((fruit) =>
                    fruit.name.toLowerCase().contains(text.toLowerCase()))
                .toList();
            _refreshData();
            debugPrint("searched: ${_searchFruits.length}");
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        child: Column(
          children: [
            const SizedBox(height: kDefaultPadding),
            
            //Tabbar Header and Tabbar Body
            TabBarCategories(
              tabController: _tabController,
              onPress: _resetTabBar,
            ),
            Expanded(
              child: TabBarCategoryView(
                tabController: _tabController,
                searchFruits: _searchFruits,
                makeFavorite: _makeFavorite,
                refreshData: _refreshData,
              ),
            ),
          ],
        ),
      ),
    );
  }
}