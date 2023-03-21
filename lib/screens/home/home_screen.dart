import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruits.dart';
import 'package:fruit_tiedot/screens/fruitdetails/fruit_detail_screen.dart';
import 'components/fruit_card.dart';
import 'components/home_searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();

  void _makeFavorite(Fruit fruit) {
    setState(() => fruit.toggleFavorite());
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    debugPrint(_searchController.text);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: HomeSearchBar(searchController: _searchController),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              FruitCardGridView(toggleFavorite: _makeFavorite),
            ],
          ),
        ),
      ),
    );
  }
}

class FruitCardGridView extends StatelessWidget {
  const FruitCardGridView({super.key, required this.toggleFavorite});

  final void Function(Fruit) toggleFavorite;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (size.width >= 600) ? 4 : 2,
        childAspectRatio: 1,
        mainAxisExtent: 200,
        crossAxisSpacing: kDefaultPadding * 0.75,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemCount: fruits.length,
      itemBuilder: ((context, index) => FruitCard(
        fruit: fruits[index],
        toggleFavorite: toggleFavorite,
        onPress: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FruitDetailScreen(
              fruit: fruits[index],
            ),
          ),
        ),
      )),
    );
  }
}
