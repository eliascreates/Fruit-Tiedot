import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_tiedot/constants.dart';


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