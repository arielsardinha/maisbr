import 'package:flutter/material.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({super.key});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int _selectedIndex = 0;

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
        BottomNavigationBarItem(
          icon: const Icon(Icons.favorite),
          label: 'Favoritos',
          backgroundColor: theme.colorScheme.primary,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.school),
          label: 'Economizei',
          backgroundColor: theme.colorScheme.primary,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.notifications),
          label: 'Alertas',
          backgroundColor: theme.colorScheme.primary,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person_sharp),
          label: 'Perfil',
          backgroundColor: theme.colorScheme.primary,
        ),
      ],
      selectedItemColor: theme.colorScheme.primary.withGreen(255),
      showUnselectedLabels: true,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
