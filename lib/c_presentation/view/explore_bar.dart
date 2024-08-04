import 'package:flutter/material.dart';
import 'package:workwalk/c_presentation/view/function_card/view_card_empty.dart';
import 'package:workwalk/c_presentation/view/function_card/view_card_search.dart';
import 'package:workwalk/c_presentation/view/function_card/view_card_community.dart';
import 'package:workwalk/c_presentation/view/items/explore_icon.dart';
import 'package:workwalk/c_presentation/view/map_widget.dart';

class ExploreBar extends StatefulWidget {
  final MapWidget linkedMap;
  final bool expanded;
  const ExploreBar({
    super.key,
    required this.linkedMap,
    this.expanded = false,
  });

  @override
  State<ExploreBar> createState() => _ExploreBarState();
}

class _ExploreBarState extends State<ExploreBar> {
  Widget viewCard = const SizedBox.shrink();
  Widget viewCardEmpty = ViewCardEmpty();
  Widget viewCardSearch = ViewCardSearch();
  Widget viewCardCommunity = ViewCardCommunity();
  String keyString = '';

  @override
  void initState() {
    super.initState();
  }

  void changeViewCard(String newViewCard) {
    setState(() {
      if (keyString != newViewCard) {
        switch (newViewCard) {
          case 'search':
            viewCard = viewCardSearch;
            break;
          case 'community':
            viewCard = viewCardCommunity;
            break;
          default:
            viewCard = viewCardEmpty;
            break;
        }
        keyString = newViewCard;
      } else {
        if (viewCard != viewCardEmpty) {
          viewCard = viewCardEmpty;
          keyString = 'empty';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ExploreIcon(
                        displayIcon: Icons.search_rounded,
                        viewCardId: 'search',
                        onDatachanged: changeViewCard,
                      ),
                      const IconDivider(),
                      ExploreIcon(
                        displayIcon: Icons.flag_rounded,
                        viewCardId: 'destination',
                        onDatachanged: changeViewCard,
                      ),
                      const IconDivider(),
                      ExploreIcon(
                        displayIcon: Icons.map_rounded,
                        viewCardId: 'map',
                        onDatachanged: changeViewCard,
                      ),
                      const IconDivider(),
                      ExploreIcon(
                        displayIcon: Icons.people_rounded,
                        viewCardId: 'community',
                        onDatachanged: changeViewCard,
                      ),
                      const IconDivider(),
                      ExploreIcon(
                        displayIcon: Icons.settings_rounded,
                        viewCardId: 'setting',
                        onDatachanged: changeViewCard,
                      ),
                    ],
                  ),
                  viewCard,
                ],
              )),
        ),
      ],
    );
  }
}

class IconDivider extends StatelessWidget {
  const IconDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: VerticalDivider(
        color: Colors.black12,
        width: 20,
        thickness: 2,
        indent: 10,
        endIndent: 10,
      ),
    );
  }
}
