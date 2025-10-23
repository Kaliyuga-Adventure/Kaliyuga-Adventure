import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/category.dart';
import 'package:myapp/models/destination.dart';
import 'package:myapp/models/package.dart';
import 'package:myapp/services/category_service.dart';
import 'package:myapp/services/destination_service.dart';
import 'package:myapp/services/package_service.dart';
import 'package:myapp/widgets/category_card.dart';
import 'package:myapp/widgets/featured_card.dart';
import 'package:myapp/widgets/package_card.dart';
import 'package:myapp/widgets/bottom_navigation_bar.dart';
import 'package:myapp/widgets/custom_header.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final DestinationService _destinationService = DestinationService();
  final PackageService _packageService = PackageService();
  final CategoryService _categoryService = CategoryService();

  late final List<Destination> _destinations;
  late final List<Package> _packages;
  late final List<Category> _categories;

  @override
  void initState() {
    super.initState();
    _destinations = _destinationService.getDestinations();
    _packages = _packageService.getPackages();
    _categories = _categoryService.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kIsWeb ? const CustomHeader() : null,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _destinations.length,
              itemBuilder: (context, index) {
                final destination = _destinations[index];
                return FeaturedCard(
                  imageUrl: destination.imageUrl,
                  title: destination.city,
                  subtitle: 'Exclusive 5-night villa deal',
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search destinations...',
              prefixIcon: const Icon(Icons.search, size: 28),
              filled: true,
              fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 20,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Categories',
            style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                final category = _categories[index];
                return CategoryCard(
                  imageUrl: category.imageUrl,
                  title: category.title,
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Trending Packages',
            style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ..._packages.map((package) => PackageCard(
                imageUrl: package.imageUrl,
                title: package.title,
                description: package.description,
                price: package.price,
              )),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(selectedIndex: 1),
    );
  }
}
