import 'package:alubank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 83, 19, 16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[
              Text.rich(
                TextSpan(
                  text: "\$",
                  children: [
                    TextSpan(
                      text: '1000.00',
                      style: Theme.of(context).textTheme.bodyLarge
                    )
                  ],
                ),
              ),
              const Text('Balanço disponível', style: TextStyle()),
            ],
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
