import 'package:flutter/material.dart';
import 'package:project_fastwork/core/app_theme.dart';
import 'package:project_fastwork/core/widgets/custom_widgets.dart';
import 'package:project_fastwork/view/shared/login_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

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
                    color: kPrimarySoft,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.send_rounded, size: 90, color: kPrimary),
                ),
                const SizedBox(height: 12),
                Chip(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: kBorder),
                  avatar: const Icon(Icons.auto_awesome, size: 14, color: kPrimary),
                  label: const Text(
                    'By students. For students.',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Big talent.\nRight on campus.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Find your people. Get it done.\nThe little marketplace with big MFU energy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: kMuted),
                ),
                const Spacer(),
                PrimaryButton(
                  'Get started',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginView()),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'MAE FAH LUANG UNIVERSITY',
                  style: TextStyle(fontSize: 10, color: kMuted),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      );
}