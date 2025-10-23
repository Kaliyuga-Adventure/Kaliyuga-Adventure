import 'package:go_router/go_router.dart';
import 'package:myapp/screens/booking_screen.dart';
import 'package:myapp/screens/explore_screen.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/settings_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/explore',
      builder: (context, state) => const ExploreScreen(),
    ),
    GoRoute(
      path: '/booking',
      builder: (context, state) => const BookingScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
