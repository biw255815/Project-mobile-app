import 'package:flutter/material.dart';
import 'package:project_fastwork/core/app_theme.dart';
import 'package:project_fastwork/core/widgets/custom_widgets.dart';

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
                  child: const Text(
                    'Change profile photo',
                    style: TextStyle(color: kPrimary, fontWeight: FontWeight.w700),
                  ),
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
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFEBE9),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'Client · assigned',
                            style: TextStyle(fontSize: 11, color: kMuted),
                          ),
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
                  suffixIcon: Icon(Icons.check_circle_outline, size: 20),
                ),
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Your name, photo and bio appear on your orders and reviews. Your email stays private.',
                  style: TextStyle(fontSize: 12, color: kMuted),
                ),
              ),
              const SizedBox(height: 16),
              PrimaryButton('Save changes', onTap: () => Navigator.pop(context)),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel', style: TextStyle(color: kMuted)),
                ),
              ),
            ],
          ),
        ),
      );
}