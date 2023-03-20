import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_tiedot/constants.dart';
import 'package:fruit_tiedot/models/fruits.dart';
import 'fruit_card.dart';

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

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const Icon(Icons.free_breakfast_outlined),
        SvgPicture.asset("assets/icons/orangeIcon.svg", height: 30),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            width: 300,
            height: 45,
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.10),
            decoration: BoxDecoration(
              color: kBgColorDark.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: "Search",
                  border: InputBorder.none),
            ),
          ),
        ),
      ],
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
        itemBuilder: ((context, index) => FruitCard(fruit: fruits[index])));
  }
}
