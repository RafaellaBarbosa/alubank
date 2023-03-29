// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:alubank/components/content_division.dart';
import 'package:flutter/material.dart';

import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/theme/theme_colors.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(
          boxContent: _RecentActivityContent(
        outputValue: '9900.97',
        entryValue: '9332.35',
        spendingLimit: '432.93',
      )),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  final String outputValue;
  final String entryValue;
  final String spendingLimit;

  const _RecentActivityContent({
    Key? key,
    required this.outputValue,
    required this.entryValue,
    required this.spendingLimit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ColorDot(color: ThemeColors.recentActivity['spent']),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Saída"),
                    Text("\$$outputValue",
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                )
              ],
            ),
            Row(
              children: [
                ColorDot(color: ThemeColors.recentActivity['spent']),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Entrada"),
                    Text("\$$entryValue",
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text("Limite de gastos: \$$spendingLimit "),
        const SizedBox(
          height: 16,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: const LinearProgressIndicator(
            minHeight: 8,
            value: 0.5,
            semanticsLabel: 'Linear progress indicator',
          ),
        ),
        const ContentDivision(),
        const Text(
            "Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!"),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Diga-me como",
              style: TextStyle(fontSize: 16),
            ))
      ],
    );
  }
}
