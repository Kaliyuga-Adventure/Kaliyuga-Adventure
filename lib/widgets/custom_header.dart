import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          TextButton(onPressed: () => context.go('/'), child: const Text('Home')),
          TextButton(onPressed: () => context.go('/explore'), child: const Text('Explore')),
          TextButton(onPressed: () => context.go('/bookings'), child: const Text('Bookings')),
          TextButton(onPressed: () => context.go('/settings'), child: const Text('Settings')),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
