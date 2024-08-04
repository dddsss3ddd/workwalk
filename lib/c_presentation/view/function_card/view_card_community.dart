import 'package:flutter/material.dart';
import 'package:workwalk/c_presentation/view/function_card/view_card_template.dart';
import 'package:workwalk/c_presentation/view/map_widget.dart';

class ViewCardCommunity extends StatelessWidget with ViewCardTemplate {
  ViewCardCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: cardHeight + 56,
          child: const Text('this is community'),
        )
      ],
    );
  }
}
