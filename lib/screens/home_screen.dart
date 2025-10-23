import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:myapp/models/destination.dart';
import 'package:myapp/models/package.dart';
import 'package:myapp/providers/theme_provider.dart';
import 'package:myapp/services/destination_service.dart';
import 'package:myapp/services/package_service.dart';
import 'package:myapp/widgets/destination_card.dart';
import 'package:myapp/widgets/package_card.dart';
import 'package:myapp/widgets/bottom_navigation_bar.dart';
import 'package:myapp/widgets/custom_header.dart';
import 'package:myapp/widgets/home_header.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DestinationService _destinationService = DestinationService();
  final PackageService _packageService = PackageService();

  late final List<Destination> _destinations;
  late final List<Package> _packages;

  @override
  void initState() {
    super.initState();
    _destinations = _destinationService.getDestinations();
    _packages = _packageService.getPackages();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: kIsWeb ? const CustomHeader() : null,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search destinations or packages',
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.surface,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.surfaceContainerHighest,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Popular Destinations',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _destinations.length,
                      itemBuilder: (context, index) {
                        final destination = _destinations[index];
                        return DestinationCard(
                          imageUrl: destination.imageUrl,
                          city: destination.city,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Trending Packages',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                  ..._packages.map((package) => PackageCard(
                        imageUrl: package.imageUrl,
                        title: package.title,
                        description: package.description,
                        price: package.price,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(selectedIndex: 0),
    );
  }
}
