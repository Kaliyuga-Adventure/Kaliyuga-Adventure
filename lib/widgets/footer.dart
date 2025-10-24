
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Social Media Icons
          const Row(
            children: [
              FaIcon(FontAwesomeIcons.facebook),
              SizedBox(width: 15),
              FaIcon(FontAwesomeIcons.twitter),
              SizedBox(width: 15),
              FaIcon(FontAwesomeIcons.instagram),
              SizedBox(width: 15),
              FaIcon(FontAwesomeIcons.linkedin),
            ],
          ),
          // Company Name and Pages
          Column(
            children: [
              const Text(
                'Company Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  TextButton(onPressed: () {}, child: const Text('Home')),
                  TextButton(onPressed: () {}, child: const Text('Explore')),
                  TextButton(onPressed: () {}, child: const Text('Bookings')),
                  TextButton(onPressed: () {}, child: const Text('Settings')),
                ],
              ),
            ],
          ),
          // Location and Details
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('123 Main Street'),
              Text('Anytown, USA 12345'),
              Text('contact@company.com'),
            ],
          ),
        ],
      ),
    );
  }
}
