import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:myapp/widgets/bottom_navigation_bar.dart';
import 'package:myapp/widgets/custom_header.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kIsWeb ? const CustomHeader() : null,
      body: const Center(
        child: Text('Bookings Screen'),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(selectedIndex: 2),
    );
  }
}
