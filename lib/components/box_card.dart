import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;

  const BoxCard({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: kElevationToShadow[3],
          color: Theme.of(context).cardColor),
      child: boxContent,
    );
  }
}
