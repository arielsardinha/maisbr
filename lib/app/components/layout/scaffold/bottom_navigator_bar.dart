import 'package:flutter/material.dart';

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: 'Inicio',
          backgroundColor: theme.colorScheme.primary,
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favoritos',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Economizei',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Alertas',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_sharp),
          label: 'Perfil',
        ),
      ],
      selectedItemColor: theme.colorScheme.primary.withGreen(255),
      showUnselectedLabels: true,
    );
  }
}
