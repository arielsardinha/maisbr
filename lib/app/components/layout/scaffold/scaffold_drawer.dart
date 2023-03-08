import 'package:flutter/material.dart';

class MBRScaffoldDrawer extends StatelessWidget {
  const MBRScaffoldDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
          ),
          child: const Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Item 1'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {},
        ),
      ],
    ));
  }
}
