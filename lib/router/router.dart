import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/screens/booking_screen.dart';
import 'package:myapp/screens/explore_screen.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/phone_login_screen.dart';
import 'package:myapp/screens/profile_creation_screen.dart';
import 'package:myapp/screens/settings_screen.dart';
import 'package:myapp/screens/signup_screen.dart';

final router = GoRouter(
  initialLocation: kIsWeb ? '/' : '/login',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/signup', builder: (context, state) => const SignUpScreen()),
    GoRoute(path: '/phone-login', builder: (context, state) => const PhoneLoginScreen()),
    GoRoute(
        path: '/profile-creation',
        builder: (context, state) => const ProfileCreationScreen()),
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
