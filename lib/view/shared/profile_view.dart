import 'package:flutter/material.dart';
import 'package:project_fastwork/core/app_theme.dart';
import 'package:project_fastwork/core/widgets/custom_widgets.dart';
import 'package:project_fastwork/view/shared/login_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  Widget tag(String text, Color bg, Color fg) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration:
            BoxDecoration(color: bg, borderRadius: BorderRadius.circular(8)),
        child: Text(text,
            style: TextStyle(
                fontSize: 11, fontWeight: FontWeight.w700, color: fg)),
      );

  Widget stat(String n, String l) => Column(
        children: [
          Text(n, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
          Text(l, style: const TextStyle(fontSize: 11, color: kMuted)),
        ],
      );

  Widget info(IconData i, String title, String sub) => ListTile(
        leading: Icon(i, color: kPrimary),
        title: Text(title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
        subtitle: Text(sub, style: const TextStyle(fontSize: 12)),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.white,
          indicatorColor: kPrimarySoft,
          selectedIndex: 3,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.receipt_long_outlined), label: 'Orders'),
            NavigationDestination(icon: Icon(Icons.favorite_border), label: 'Favorites'),
            NavigationDestination(icon: Icon(Icons.person, color: kPrimary), label: 'Profile'),
          ],
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const Header('Your corner of campus'),
              const SizedBox(height: 24),
              const Center(child: Avatar(radius: 44)),
              const SizedBox(height: 12),
              const Center(
                  child: Text('Niran Phan',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800))),
              const Center(
                  child: Text('@niran.p · Member since August 2026',
                      style: TextStyle(fontSize: 12, color: kMuted))),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tag('Client account', kPrimarySoft, kPrimary),
                  tag('MFU email verified', const Color(0xFFE6F4EA),
                      const Color(0xFF1E7B3A)),
                ],
              ),
              const SizedBox(height: 20),
              OutlineBtn('Edit profile',
                  icon: Icons.edit_outlined,
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const EditProfileView()))),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: kBorder)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    stat('6', 'Orders placed'),
                    stat('4', 'Reviews given'),
                    stat('8', 'Saved services'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: kBorder)),
                child: Column(
                  children: [
                    info(Icons.school_outlined, 'School of Management',
                        'Business Administration · Year 3'),
                    const Divider(height: 1),
                    info(Icons.mail_outline, 'University email',
                        'niran.phan@lamduan.mfu.ac.th'),
                    const Divider(height: 1),
                    info(Icons.location_on_outlined, 'Based in Chiang Rai',
                        'Mae Fah Luang University'),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              ListTile(
                leading: const Icon(Icons.help_outline, color: kMuted),
                title: const Text('Help & campus guidelines'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              OutlineBtn('Log out',
                  icon: Icons.logout,
                  onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginView()),
                      (r) => false)),
            ],
          ),
        ),
      );
}

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const Header('Make yourself at home', back: true),
              const SizedBox(height: 16),
              const Center(child: Avatar(radius: 38)),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Change profile photo',
                      style: TextStyle(
                          color: kPrimary, fontWeight: FontWeight.w700)),
                ),
              ),
              const Label('Full name'),
              TextFormField(initialValue: 'Niran Phan'),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Label('Username'),
                        TextFormField(initialValue: 'niran.p'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Label('Account role'),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              color: const Color(0xFFEFEBE9),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Text('Client · assigned',
                              style: TextStyle(fontSize: 11, color: kMuted)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Label('University email'),
              TextFormField(
                initialValue: 'niran.phan@lamduan.mfu.ac.th',
                readOnly: true,
                decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.check_circle_outline, size: 20)),
              ),
              const Label('School'),
              DropdownButtonFormField<String>(
                value: 'School of Management',
                items: const [
                  'School of Management',
                  'School of Science',
                  'School of Information Technology',
                  'School of Law',
                ]
                    .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                    .toList(),
                onChanged: (_) {},
              ),
              const Label('About you'),
              TextFormField(
                initialValue:
                    'Third-year business student. Usually planning a club event, always looking for good campus talent.',
                maxLines: 4,
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color(0xFFEFEBE9),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                    'Your name, photo and bio appear on your orders and reviews. Your email stays private.',
                    style: TextStyle(fontSize: 12, color: kMuted)),
              ),
              const SizedBox(height: 16),
              PrimaryButton('Save changes', onTap: () => Navigator.pop(context)),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel',
                      style: TextStyle(color: kMuted)),
                ),
              ),
            ],
          ),
        ),
      );
}