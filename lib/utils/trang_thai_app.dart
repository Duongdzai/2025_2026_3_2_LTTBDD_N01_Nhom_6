import 'package:flutter/material.dart';

class TrangThaiAppProvider extends InheritedWidget {
  final bool isEnglish;
  final VoidCallback onLanguageToggle;

  final bool isDark;
  final VoidCallback onThemeToggle;

  const TrangThaiAppProvider({
    super.key,
    required this.isEnglish,
    required this.onLanguageToggle,
    required this.isDark,
    required this.onThemeToggle,
    required super.child,
  });

  static TrangThaiAppProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TrangThaiAppProvider>();
  }

  @override
  bool updateShouldNotify(TrangThaiAppProvider oldWidget) {
    return isEnglish != oldWidget.isEnglish || isDark != oldWidget.isDark;
  }
}
