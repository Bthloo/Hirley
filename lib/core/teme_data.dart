import 'package:flutter/material.dart';

/// Full ThemeData built around primary color #0047AB (Cobalt Blue).
/// Uses Material 3 with a hand-tuned ColorScheme for light and dark modes.
abstract class AppTheme {
  // ─── Brand seed ───────────────────────────────────────────────────────────
  static const Color primary = Color(0xFF00327D);

  // ─── Light ColorScheme ────────────────────────────────────────────────────
  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,

    // Primary
    primary: Color(0xFF00327D),         // Cobalt Blue
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFD6E3FF),
    onPrimaryContainer: Color(0xFF001849),

    // Primary fixed (M3 tonal extras)
    primaryFixed: Color(0xFFD6E3FF),
    primaryFixedDim: Color(0xFFAAC7FF),
    onPrimaryFixed: Color(0xFF001849),
    onPrimaryFixedVariant: Color(0xFF003587),

    // Secondary (desaturated blue)
    secondary: Color(0xFF555F71),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD9E3F9),
    onSecondaryContainer: Color(0xFF121C2B),

    // Secondary fixed
    secondaryFixed: Color(0xFFD9E3F9),
    secondaryFixedDim: Color(0xFFBDC7DC),
    onSecondaryFixed: Color(0xFF121C2B),
    onSecondaryFixedVariant: Color(0xFF3E4759),

    // Tertiary (complementary blue-violet)
    tertiary: Color(0xFF6E5590),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFF0DBFF),
    onTertiaryContainer: Color(0xFF280049),

    // Tertiary fixed
    tertiaryFixed: Color(0xFFF0DBFF),
    tertiaryFixedDim: Color(0xFFD5BAF5),
    onTertiaryFixed: Color(0xFF280049),
    onTertiaryFixedVariant: Color(0xFF553D76),

    // Error
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),

    // Surface
    surface: Color(0xFFF9F9FF),
    onSurface: Color(0xFF191C20),
    onSurfaceVariant: Color(0xFF44474F),

    // Surface container tonal steps
    surfaceDim: Color(0xFFD9D9E0),
    surfaceBright: Color(0xFFF9F9FF),
    surfaceContainerLowest: Color(0xFFFFFFFF),
    surfaceContainerLow: Color(0xFFF3F3FA),
    surfaceContainer: Color(0xFFEDEDF4),
    surfaceContainerHigh: Color(0xFFE8E7EF),
    surfaceContainerHighest: Color(0xFFE2E2E9),

    // Outline
    outline: Color(0xFF74777F),
    outlineVariant: Color(0xFFC4C6D0),

    // Inverse
    inverseSurface: Color(0xFF2E3036),
    onInverseSurface: Color(0xFFF0F0F7),
    inversePrimary: Color(0xFFAAC7FF),

    // Scrim / shadow
    scrim: Color(0xFF000000),
    shadow: Color(0xFF000000),
  );

  // ─── Dark ColorScheme ─────────────────────────────────────────────────────
  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    // Primary
    primary: Color(0xFFAAC7FF),
    onPrimary: Color(0xFF002E6E),
    primaryContainer: Color(0xFF003587),
    onPrimaryContainer: Color(0xFFD6E3FF),

    // Primary fixed
    primaryFixed: Color(0xFFD6E3FF),
    primaryFixedDim: Color(0xFFAAC7FF),
    onPrimaryFixed: Color(0xFF001849),
    onPrimaryFixedVariant: Color(0xFF003587),

    // Secondary
    secondary: Color(0xFFBDC7DC),
    onSecondary: Color(0xFF273141),
    secondaryContainer: Color(0xFF3E4759),
    onSecondaryContainer: Color(0xFFD9E3F9),

    // Secondary fixed
    secondaryFixed: Color(0xFFD9E3F9),
    secondaryFixedDim: Color(0xFFBDC7DC),
    onSecondaryFixed: Color(0xFF121C2B),
    onSecondaryFixedVariant: Color(0xFF3E4759),

    // Tertiary
    tertiary: Color(0xFFD5BAF5),
    onTertiary: Color(0xFF3D2660),
    tertiaryContainer: Color(0xFF553D76),
    onTertiaryContainer: Color(0xFFF0DBFF),

    // Tertiary fixed
    tertiaryFixed: Color(0xFFF0DBFF),
    tertiaryFixedDim: Color(0xFFD5BAF5),
    onTertiaryFixed: Color(0xFF280049),
    onTertiaryFixedVariant: Color(0xFF553D76),

    // Error
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),

    // Surface
    surface: Color(0xFF111318),
    onSurface: Color(0xFFE2E2E9),
    onSurfaceVariant: Color(0xFFC4C6D0),

    // Surface container tonal steps
    surfaceDim: Color(0xFF111318),
    surfaceBright: Color(0xFF37393F),
    surfaceContainerLowest: Color(0xFF0C0E13),
    surfaceContainerLow: Color(0xFF191C20),
    surfaceContainer: Color(0xFF1D2025),
    surfaceContainerHigh: Color(0xFF282A2F),
    surfaceContainerHighest: Color(0xFF33353A),

    // Outline
    outline: Color(0xFF8E9099),
    outlineVariant: Color(0xFF44474F),

    // Inverse
    inverseSurface: Color(0xFFE2E2E9),
    onInverseSurface: Color(0xFF2E3036),
    inversePrimary: Color(0xFF0047AB),

    // Scrim / shadow
    scrim: Color(0xFF000000),
    shadow: Color(0xFF000000),
  );

  // ─── Typography ───────────────────────────────────────────────────────────
  static const TextTheme _textTheme = TextTheme(
    displayLarge:   TextStyle(fontSize: 57, fontWeight: FontWeight.w400, letterSpacing: -0.25),
    displayMedium:  TextStyle(fontSize: 45, fontWeight: FontWeight.w400),
    displaySmall:   TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
    headlineLarge:  TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
    headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
    headlineSmall:  TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
    titleLarge:     TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
    titleMedium:    TextStyle(fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    titleSmall:     TextStyle(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.10),
    bodyLarge:      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.50),
    bodyMedium:     TextStyle(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    bodySmall:      TextStyle(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.40),
    labelLarge:     TextStyle(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.10),
    labelMedium:    TextStyle(fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.50),
    labelSmall:     TextStyle(fontSize: 11, fontWeight: FontWeight.w500, letterSpacing: 0.50),
  );

  // ─── Shared component themes ──────────────────────────────────────────────
  static AppBarTheme _appBarTheme(ColorScheme cs) => AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: cs.primary,
    elevation: 1,
    shadowColor: Colors.black,
    surfaceTintColor: Colors.transparent,
    scrolledUnderElevation: 1,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: cs.primary,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  );

  static ElevatedButtonThemeData _elevatedButtonTheme(ColorScheme cs) =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      );

  static FilledButtonThemeData _filledButtonTheme(ColorScheme cs) =>
      FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          minimumSize: const Size(64, 40),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      );

  static OutlinedButtonThemeData _outlinedButtonTheme(ColorScheme cs) =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: cs.primary,
          side: BorderSide(color: cs.outline),
          minimumSize: const Size(64, 40),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      );

  static TextButtonThemeData _textButtonTheme(ColorScheme cs) =>
      TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: cs.primary,
          minimumSize: const Size(64, 40),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      );

  static FloatingActionButtonThemeData _fabTheme(ColorScheme cs) =>
      FloatingActionButtonThemeData(
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      );

  static CardThemeData _cardTheme(ColorScheme cs) => CardThemeData(
    color: cs.surfaceContainerLow,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    clipBehavior: Clip.antiAlias,
  );

  static InputDecorationTheme _inputDecorationTheme(ColorScheme cs) =>
      InputDecorationTheme(
        filled: true,
        fillColor: cs.surfaceContainerHighest,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: cs.outline, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: cs.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: cs.error, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: cs.error, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      );

  static CheckboxThemeData _checkboxTheme(ColorScheme cs) => CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return cs.primary;
      return Colors.transparent;
    }),
    checkColor: WidgetStateProperty.all(cs.onPrimary),
    side: BorderSide(color: cs.outline, width: 2),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  static RadioThemeData _radioTheme(ColorScheme cs) => RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return cs.primary;
      return cs.onSurfaceVariant;
    }),
  );

  static SwitchThemeData _switchTheme(ColorScheme cs) => SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return cs.onPrimary;
      return cs.outline;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return cs.primary;
      return cs.surfaceContainerHighest;
    }),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) return Colors.transparent;
      return cs.outline;
    }),
  );

  static SliderThemeData _sliderTheme(ColorScheme cs) => SliderThemeData(
    activeTrackColor: cs.primary,
    inactiveTrackColor: cs.surfaceContainerHighest,
    thumbColor: cs.primary,
    overlayColor: cs.primary.withAlpha(30),
    valueIndicatorColor: cs.primary,
    valueIndicatorTextStyle: TextStyle(color: cs.onPrimary),
  );

  static TabBarThemeData _tabBarTheme(ColorScheme cs) => TabBarThemeData(
    labelColor: cs.primary,
    unselectedLabelColor: cs.onSurfaceVariant,
    indicatorColor: cs.primary,
    indicatorSize: TabBarIndicatorSize.label,
    dividerColor: cs.outlineVariant,
  );

  static BottomNavigationBarThemeData _bottomNavTheme(ColorScheme cs) =>
      BottomNavigationBarThemeData(
        backgroundColor: cs.surface,
        selectedItemColor: cs.primary,
        unselectedItemColor: cs.onSurfaceVariant,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      );

  static NavigationBarThemeData _navigationBarTheme(ColorScheme cs) =>
      NavigationBarThemeData(
        backgroundColor: cs.surfaceContainer,
        indicatorColor: cs.secondaryContainer,
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: cs.onSecondaryContainer);
          }
          return IconThemeData(color: cs.onSurfaceVariant);
        }),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              color: cs.onSurface,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            );
          }
          return TextStyle(
            color: cs.onSurfaceVariant,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          );
        }),
      );

  static NavigationDrawerThemeData _navigationDrawerTheme(ColorScheme cs) =>
      NavigationDrawerThemeData(
        backgroundColor: cs.surfaceContainerLow,
        indicatorColor: cs.secondaryContainer,
      );

  static SnackBarThemeData _snackBarTheme(ColorScheme cs) => SnackBarThemeData(
    backgroundColor: cs.inverseSurface,
    contentTextStyle: TextStyle(color: cs.onInverseSurface),
    actionTextColor: cs.inversePrimary,
    behavior: SnackBarBehavior.floating,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );

  static ChipThemeData _chipTheme(ColorScheme cs) => ChipThemeData(
    backgroundColor: cs.surfaceContainerLow,
    selectedColor: cs.secondaryContainer,
    labelStyle: TextStyle(color: cs.onSurfaceVariant),
    side: BorderSide(color: cs.outlineVariant),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  );

  static DialogThemeData _dialogTheme(ColorScheme cs) => DialogThemeData(
    backgroundColor: cs.surfaceContainerHigh,
    surfaceTintColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(28)),
    ),
  );

  static ProgressIndicatorThemeData _progressIndicatorTheme(ColorScheme cs) =>
      ProgressIndicatorThemeData(
        color: cs.primary,
        linearTrackColor: cs.surfaceContainerHighest,
        circularTrackColor: cs.surfaceContainerHighest,
      );

  static DividerThemeData _dividerTheme(ColorScheme cs) => DividerThemeData(
    color: cs.outlineVariant,
    thickness: 1,
    space: 1,
  );

  static ListTileThemeData _listTileTheme(ColorScheme cs) => ListTileThemeData(
    tileColor: Colors.transparent,
    selectedTileColor: cs.secondaryContainer.withAlpha(120),
    selectedColor: cs.onSecondaryContainer,
    iconColor: cs.onSurfaceVariant,
    textColor: cs.onSurface,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );

  static TooltipThemeData _tooltipTheme(ColorScheme cs) => TooltipThemeData(
    decoration: BoxDecoration(
      color: cs.inverseSurface,
      borderRadius: const BorderRadius.all(Radius.circular(4)),
    ),
    textStyle: TextStyle(color: cs.onInverseSurface, fontSize: 12),
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
  );

  static PopupMenuThemeData _popupMenuTheme(ColorScheme cs) => PopupMenuThemeData(
    color: cs.surfaceContainerHigh,
    surfaceTintColor: Colors.transparent,
    elevation: 2,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );

  static BottomSheetThemeData _bottomSheetTheme(ColorScheme cs) => BottomSheetThemeData(
    backgroundColor: cs.surfaceContainerLow,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
    ),
    dragHandleColor: cs.onSurfaceVariant,
    showDragHandle: true,
  );

  // ─── Builder ──────────────────────────────────────────────────────────────
  static ThemeData _build(ColorScheme cs) => ThemeData(
    useMaterial3: true,
    colorScheme: cs,
    textTheme: _textTheme,
    fontFamily: "Inter",
    // Scaffold
    scaffoldBackgroundColor: Colors.white,

    // Icon
    iconTheme: IconThemeData(color: cs.onSurface, size: 24),
    primaryIconTheme: IconThemeData(color: cs.onPrimary, size: 24),

    // Components
    appBarTheme: _appBarTheme(cs),
    elevatedButtonTheme: _elevatedButtonTheme(cs),
    filledButtonTheme: _filledButtonTheme(cs),
    outlinedButtonTheme: _outlinedButtonTheme(cs),
    textButtonTheme: _textButtonTheme(cs),
    floatingActionButtonTheme: _fabTheme(cs),
    cardTheme: _cardTheme(cs),
    inputDecorationTheme: _inputDecorationTheme(cs),
    checkboxTheme: _checkboxTheme(cs),
    radioTheme: _radioTheme(cs),
    switchTheme: _switchTheme(cs),
    sliderTheme: _sliderTheme(cs),
    tabBarTheme: _tabBarTheme(cs),
    bottomNavigationBarTheme: _bottomNavTheme(cs),
    navigationBarTheme: _navigationBarTheme(cs),
    navigationDrawerTheme: _navigationDrawerTheme(cs),
    snackBarTheme: _snackBarTheme(cs),
    chipTheme: _chipTheme(cs),
    dialogTheme: _dialogTheme(cs),
    progressIndicatorTheme: _progressIndicatorTheme(cs),
    dividerTheme: _dividerTheme(cs),
    listTileTheme: _listTileTheme(cs),
    tooltipTheme: _tooltipTheme(cs),
    popupMenuTheme: _popupMenuTheme(cs),
    bottomSheetTheme: _bottomSheetTheme(cs),

    // Splash / highlight (M3-style)
    splashFactory: InkSparkle.splashFactory,
  );

  // ─── Public themes ────────────────────────────────────────────────────────
  /// Light theme — use in [MaterialApp.theme].
  static ThemeData get light => _build(_lightColorScheme);

  /// Dark theme — use in [MaterialApp.darkTheme].
  static ThemeData get dark => _build(_darkColorScheme);
}
