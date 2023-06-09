import 'package:flutter/material.dart';
import 'package:fruit_tiedot/constants.dart';
import '../../fruit_details/fruit_detail_screen.dart';
import 'fruit_card.dart';

class FruitCardGridView extends StatelessWidget {
  const FruitCardGridView(
      {super.key,
      required this.refreshData,
      required this.fruitsFiltered});

  final List fruitsFiltered;
  final VoidCallback refreshData;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
      addRepaintBoundaries: false,
      cacheExtent: fruitsFiltered.length * 1.0,
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (size.width >= 600) ? 4 : 2,
        childAspectRatio: 1,
        mainAxisExtent: 200,
        crossAxisSpacing: kDefaultPadding * 0.75,
        mainAxisSpacing: kDefaultPadding * 0.75,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2,
        vertical: kDefaultPadding,
      ),
      scrollDirection: Axis.vertical,
      itemCount: fruitsFiltered.length,
      itemBuilder: ((context, index) => FruitCard(
            fruit: fruitsFiltered[index],
            // toggleFavorite: toggleFavorite,
            onPress: () async {
              bool refresh = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FruitDetailScreen(
                    fruit: fruitsFiltered[index],
                  ),
                ),
              );
              if (refresh) {
                refreshData();
              }
            },
          )),
    );
  }
}
