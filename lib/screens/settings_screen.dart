import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/widgets/bottom_navigation_bar.dart';
import 'package:myapp/widgets/custom_header.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: kIsWeb ? const CustomHeader() : null,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?w=500&h=500&fit=crop'),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sophia', style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('View profile', style: GoogleFonts.lato(fontSize: 16, color: Colors.blue)),
                ],
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios, size: 18),
            ],
          ),
          const SizedBox(height: 30),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Host your place', style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        Text("It's easy to set up and start earning", style: GoogleFonts.lato(fontSize: 14)),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?w=200&h=200&fit=crop',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          _buildSectionHeader('Account settings'),
          _buildSettingsCard([
            _buildSettingsItem(context, Icons.person_outline, 'Personal information'),
            _buildSettingsItem(context, Icons.payment_outlined, 'Payments and payouts'),
            _buildSettingsItem(context, Icons.notifications_outlined, 'Notifications'),
            _buildSettingsItem(context, Icons.lock_outline, 'Privacy and sharing'),
          ]),
          const SizedBox(height: 30),
          _buildSectionHeader('Referrals & Credits'),
          _buildSettingsCard([
            _buildSettingsItem(context, Icons.card_giftcard_outlined, 'Gift cards', subtitle: 'Send or redeem a gift card'),
            _buildSettingsItem(context, Icons.people_outline, 'Refer a friend', subtitle: 'Earn \$20 for every user you refer'),
          ]),
          const SizedBox(height: 30),
          _buildSectionHeader('Support'),
          _buildSettingsCard([
            _buildSettingsItem(context, Icons.shield_outlined, 'Safety Center', subtitle: 'Get the support, tools, and info you need to be safe.'),
            _buildSettingsItem(context, Icons.headset_mic_outlined, 'Contact Support', subtitle: 'Let our team know about your concerns.'),
          ]),
          const SizedBox(height: 30),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Log out',
                style: GoogleFonts.lato(fontSize: 16, color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(selectedIndex: 3),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 4.0),
      child: Text(
        title,
        style: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSettingsCard(List<Widget> items) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) => items[index],
        separatorBuilder: (context, index) => const Divider(height: 1, indent: 56),
      ),
    );
  }

  Widget _buildSettingsItem(BuildContext context, IconData icon, String title, {String? subtitle}) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue.withAlpha(25), // 10% opacity
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: Colors.blue, size: 20)
      ),
      title: Text(title, style: GoogleFonts.lato(fontWeight: FontWeight.w600)),
      subtitle: subtitle != null ? Text(subtitle, style: GoogleFonts.lato()) : null,
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
