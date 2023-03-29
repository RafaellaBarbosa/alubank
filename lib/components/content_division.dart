import 'package:alubank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class ContentDivision extends StatelessWidget {
  const ContentDivision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 16,
      color: ThemeColors.division,
      thickness: 1,
    );
  }
}
