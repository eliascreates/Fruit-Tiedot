import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruits.dart';
import 'package:fruit_tiedot/screens/fruitdetails/fruit_detail_screen.dart';
import 'components/fruit_card.dart';
import 'components/home_searchbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    debugPrint(_searchController.text);
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
            children: const [
              FruitCardGridView(),
            ],
          ),
        ),
      ),
    );
  }
}

class FruitCardGridView extends StatelessWidget {
  const FruitCardGridView({
    super.key,
  });

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
