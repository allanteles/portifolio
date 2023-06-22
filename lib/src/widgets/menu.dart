import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final ValueChanged<int> onMenuClick;
  const Menu({super.key, required this.onMenuClick});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final _swithMode = false;

  @override
  Widget build(BuildContext context) {
    final titleLarge = Theme.of(context).textTheme.titleLarge;
    return Container(
      height: 100,
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => widget.onMenuClick(1),
            child: Text(
              'Minha Jornada',
              style: titleLarge,
            ),
          ),
          TextButton(
            onPressed: () => widget.onMenuClick(2),
            child: Text(
              'Projetos',
              style: titleLarge,
            ),
          ),
          TextButton(
            onPressed: () => widget.onMenuClick(3),
            child: Text(
              'Contato',
              style: titleLarge,
            ),
          ),
          Expanded(
              child: Switch(
            value: _swithMode,
            onChanged: (value) => {
              
            },
          ))
        ],
      ),
    );
  }
}
