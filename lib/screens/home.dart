import 'package:alubank/components/sections/box_card.dart';
import 'package:alubank/components/sections/color_dor.dart';
import 'package:alubank/components/sections/header.dart';
import 'package:alubank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Header(),
        BoxCard(
          boxContent: Row(
            children:  [
              ColorDot(color:ThemeColors.recentActivity['spent']),
              const Text("Ola mundo"),
            ],
          ),
        )
      ],
    ));
  }
}
