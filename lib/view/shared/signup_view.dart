import 'package:flutter/material.dart';
import 'package:project_fastwork/core/app_theme.dart';
import 'package:project_fastwork/core/widgets/custom_widgets.dart';
import 'package:project_fastwork/view/shared/profile_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                              builder: (_) => const ProfileView()))
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