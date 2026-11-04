import 'package:flutter/material.dart';

// ---------- Color Palette ----------
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