import 'package:flutter/material.dart';
import 'package:project_fastwork/core/app_theme.dart';
import 'package:project_fastwork/core/widgets/custom_widgets.dart';
import 'package:project_fastwork/view/client/client_home_view.dart';
import 'package:project_fastwork/view/shared/signup_view.dart';

// ชื่อ LoginView ตรงกับที่ main.dart เรียก runApp(const LoginView())
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MFU Fastwork',
      theme: appTheme(),
      home: const LoginContent(),
    );
  }
}

class LoginContent extends StatefulWidget {
  const LoginContent({super.key});

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
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
                  // เมื่อกด Login จะพาไปหน้า ClientHomeView
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ClientHomeView()))),
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
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const SignUpView()))),
            ],
          ),
        ),
      );
}