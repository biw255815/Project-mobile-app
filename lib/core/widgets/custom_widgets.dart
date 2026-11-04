import 'package:flutter/material.dart';
import 'package:project_fastwork/core/app_theme.dart';

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