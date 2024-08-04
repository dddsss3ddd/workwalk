import 'package:flutter/material.dart';
import 'package:workwalk/c_presentation/view/function_card/view_card_template.dart';

class ViewCardEmpty extends StatelessWidget with ViewCardTemplate {
  ViewCardEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
