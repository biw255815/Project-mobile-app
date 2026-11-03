import 'package:flutter/material.dart';

// ---------- Theme ----------
const kPrimary = Color(0xFFA8303F);
const kPrimarySoft = Color(0xFFFBEEF0);
const kBg = Color(0xFFF6F3F1);
const kText = Color(0xFF1B1B1F);
const kMuted = Color(0xFF7A7A80);
const kBorder = Color(0xFFE6E2E0);

ThemeData appTheme() => ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: kBg,
      colorScheme: ColorScheme.fromSeed(seedColor: kPrimary, primary: kPrimary),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: kBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: kBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: kPrimary, width: 1.5),
        ),
      ),
    );

// ---------- Reusable widgets ----------
class Logo extends StatelessWidget {
  final double size;
  const Logo({super.key, this.size = 52});
  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
                color: kPrimary, borderRadius: BorderRadius.circular(12)),
            child: Icon(Icons.bolt, color: Colors.white, size: size * 0.55),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      fontSize: size * 0.5,
                      fontWeight: FontWeight.w800,
                      color: kText),
                  children: const [
                    TextSpan(text: 'MFU '),
                    TextSpan(text: 'Fastwork', style: TextStyle(color: kPrimary)),
                  ],
                ),
              ),
              const Text('BIG TALENT. SMALL CAMPUS.',
                  style: TextStyle(fontSize: 9, color: kMuted)),
            ],
          ),
        ],
      );
}

class Label extends StatelessWidget {
  final String text;
  const Label(this.text, {super.key});
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 6),
        child: Text(text,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
      );
}

class PrimaryButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onTap;
  const PrimaryButton(this.text, {super.key, this.icon, required this.onTap});
  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        height: 52,
        child: FilledButton.icon(
          onPressed: onTap,
          style: FilledButton.styleFrom(
            backgroundColor: kPrimary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          icon: icon == null ? const SizedBox.shrink() : Icon(icon, size: 18),
          label: Text(text,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
        ),
      );
}

class OutlineBtn extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onTap;
  const OutlineBtn(this.text, {super.key, this.icon, required this.onTap});
  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        height: 52,
        child: OutlinedButton.icon(
          onPressed: onTap,
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: kText,
            side: const BorderSide(color: kBorder),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          icon: icon == null ? const SizedBox.shrink() : Icon(icon, size: 18),
          label: Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
        ),
      );
}

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hide = true;
  @override
  Widget build(BuildContext context) => TextField(
        obscureText: hide,
        decoration: InputDecoration(
          hintText: 'Enter your password',
          suffixIcon: IconButton(
            icon: Icon(hide ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                size: 20),
            onPressed: () => setState(() => hide = !hide),
          ),
        ),
      );
}

class Header extends StatelessWidget {
  final String title;
  final bool back;
  const Header(this.title, {super.key, this.back = false});
  @override
  Widget build(BuildContext context) => Row(
        children: [
          if (back)
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('MFU FASTWORK',
                  style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                      color: kPrimary)),
              Text(title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w800, color: kText)),
            ],
          ),
        ],
      );
}

class Avatar extends StatelessWidget {
  final double radius;
  const Avatar({super.key, this.radius = 44});
  @override
  Widget build(BuildContext context) => CircleAvatar(
        radius: radius,
        backgroundColor: kPrimarySoft,
        child: Icon(Icons.person, size: radius, color: kPrimary),
      );
}

// ---------- 1. Welcome ----------
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const Spacer(),
                const Logo(),
                const SizedBox(height: 32),
                Container(
                  width: 220,
                  height: 220,
                  decoration: const BoxDecoration(
                      color: kPrimarySoft, shape: BoxShape.circle),
                  child: const Icon(Icons.send_rounded, size: 90, color: kPrimary),
                ),
                const SizedBox(height: 12),
                Chip(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: kBorder),
                  avatar: const Icon(Icons.auto_awesome, size: 14, color: kPrimary),
                  label: const Text('By students. For students.',
                      style: TextStyle(fontSize: 11)),
                ),
                const SizedBox(height: 24),
                const Text('Big talent.\nRight on campus.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w800, height: 1.15)),
                const SizedBox(height: 12),
                const Text(
                    'Find your people. Get it done.\nThe little marketplace with big MFU energy.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kMuted)),
                const Spacer(),
                PrimaryButton('Get started',
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const LoginBodyView()))),
                const SizedBox(height: 12),
                const Text('MAE FAH LUANG UNIVERSITY',
                    style: TextStyle(fontSize: 10, color: kMuted)),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      );
}

// ---------- 2. Login (Root Entrypoint) ----------
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MFU Fastwork',
      theme: appTheme(),
      home: const LoginBodyView(),
    );
  }
}

class LoginBodyView extends StatefulWidget {
  const LoginBodyView({super.key});
  @override
  State<LoginBodyView> createState() => _LoginBodyViewState();
}

class _LoginBodyViewState extends State<LoginBodyView> {
  bool remember = true;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const Header('Welcome back'),
              const SizedBox(height: 28),
              const Logo(size: 44),
              const SizedBox(height: 24),
              const Text('Your next big thing\nstarts here.',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w800, height: 1.15)),
              const SizedBox(height: 8),
              const Text(
                  'A side hustle, a fresh idea, or a helping hand.\nYour campus has you covered.',
                  style: TextStyle(color: kMuted)),
              const Label('Username'),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your username',
                    suffixIcon: Icon(Icons.person_outline, size: 20)),
              ),
              const Label('Password'),
              const PasswordField(),
              const SizedBox(height: 8),
              Row(
                children: [
                  Checkbox(
                      value: remember,
                      activeColor: kPrimary,
                      onChanged: (v) => setState(() => remember = v ?? false)),
                  const Text('Remember me', style: TextStyle(fontSize: 13)),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot password?',
                        style: TextStyle(
                            color: kPrimary, fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              PrimaryButton('Log in',
                  icon: Icons.arrow_forward,
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => const ProfileScreen()))),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color(0xFFEFEBE9),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                    'One login, your own space. We\'ll take you to your Client, Freelancer, or Admin area automatically.',
                    style: TextStyle(fontSize: 12, color: kMuted)),
              ),
              const SizedBox(height: 24),
              const Center(
                  child: Text('New around campus?',
                      style: TextStyle(color: kMuted, fontSize: 13))),
              const SizedBox(height: 8),
              OutlineBtn('Create an account',
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const SignUpScreen()))),
            ],
          ),
        ),
      );
}

// ---------- 3. Sign up ----------
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String role = 'Client';
  bool agree = true;

  Widget roleCard(String name, String sub, IconData icon) {
    final selected = role == name;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => role = name),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: selected ? kPrimarySoft : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: selected ? kPrimary : kBorder, width: selected ? 1.5 : 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(icon, color: kPrimary),
                  Icon(selected ? Icons.radio_button_checked : Icons.radio_button_off,
                      size: 18, color: selected ? kPrimary : kBorder),
                ],
              ),
              const SizedBox(height: 14),
              Text(name, style: const TextStyle(fontWeight: FontWeight.w700)),
              Text(sub, style: const TextStyle(fontSize: 11, color: kMuted)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const Header('Join the campus crew', back: true),
              const SizedBox(height: 16),
              const Text(
                  'Good work starts with good people.\nHow would you like to get started?',
                  style: TextStyle(color: kMuted)),
              const SizedBox(height: 16),
              Row(
                children: [
                  roleCard('Client', 'Find a helping hand', Icons.work_outline),
                  const SizedBox(width: 12),
                  roleCard('Freelancer', 'Put your skills to work',
                      Icons.auto_awesome_outlined),
                ],
              ),
              const Label('Full name'),
              const TextField(decoration: InputDecoration(hintText: 'Your full name')),
              const Label('University email'),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'name@lamduan.mfu.ac.th',
                    suffixIcon: Icon(Icons.mail_outline, size: 20)),
              ),
              const Label('Username'),
              const TextField(decoration: InputDecoration(hintText: 'Pick a username')),
              const Label('Password'),
              const PasswordField(),
              const Padding(
                padding: EdgeInsets.only(top: 6),
                child: Text('Use at least 8 characters, including a number.',
                    style: TextStyle(fontSize: 12, color: kMuted)),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                      value: agree,
                      activeColor: kPrimary,
                      onChanged: (v) => setState(() => agree = v ?? false)),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                          'I agree to the Terms of Service and Privacy Policy. Let\'s keep campus kind and work fair.',
                          style: TextStyle(fontSize: 12, color: kMuted)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              PrimaryButton('Create $role account',
                  icon: Icons.arrow_forward,
                  onTap: agree
                      ? () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ProfileScreen()))
                      : () {}),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Already part of the crew? Log in',
                      style: TextStyle(
                          color: kPrimary, fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          ),
        ),
      );
}

// ---------- 4. Profile ----------
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                      MaterialPageRoute(builder: (_) => const EditProfileScreen()))),
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
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                      (r) => false)),
            ],
          ),
        ),
      );
}

// ---------- 5. Edit profile ----------
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});
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