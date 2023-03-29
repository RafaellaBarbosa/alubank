import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Ações da conta',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: BoxCard(
                onTap: () {},
                boxContent: const _AccountActionsContent(
                  icon: Icons.account_balance_wallet,
                  text: 'Depositar',
                ),
              ),
            ),
            const SizedBox(width: 11),
            Expanded(
              child: BoxCard(
                onTap: () {},
                boxContent: const _AccountActionsContent(
                  icon: Icons.cached,
                  text: 'Transferir',
                ),
              ),
            ),
            const SizedBox(width: 11),
            Expanded(
              child: BoxCard(

       

                onTap: () {},

                boxContent: const _AccountActionsContent(
                  icon: Icons.center_focus_strong,
                  text: 'Ler',
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final IconData icon;
  final String text;

  const _AccountActionsContent(
      {required this.icon, required this.text});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(text),
      ],
    );
  }
}
