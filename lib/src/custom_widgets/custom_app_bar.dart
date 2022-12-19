import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: const Text('T O T A    Eventos'),
      elevation: 0,
      leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.short_text_rounded),
          tooltip: 'Pesquisar artistas',
          onPressed: () => ZoomDrawer.of(context)!.open(),
        ),
      actions: [
        IconButton(
          color: Colors.white,
          icon: const Icon(Icons.search_rounded),
          tooltip: 'Pesquisar artistas',
          onPressed: () => {},
        ),
        IconButton(
        color: Colors.white,
        icon: const Icon(Icons.notifications_rounded),
        tooltip: 'Abrir notificações',
        onPressed: () => {},
      ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
