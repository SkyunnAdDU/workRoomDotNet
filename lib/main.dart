import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'auth/custom_auth/auth_util.dart';
import 'auth/custom_auth/custom_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  await FlutterFlowTheme.initialize();

  await authManager.initialize();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  late Stream<WorkRoomDotNetAuthUser> userStream;

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = workRoomDotNetAuthUserStream()
      ..listen((user) {
        _appStateNotifier.update(user);
      });

    Future.delayed(
      const Duration(milliseconds: 1000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  void setThemeMode(ThemeMode mode) => safeSetState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'workRoomDotNet',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key, this.initialPage, this.page});

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'adminDashboard';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'loginPage': const LoginPageWidget(),
      'HomePage': const HomePageWidget(),
      'aboutPage': const AboutPageWidget(),
      'contactPage': const ContactPageWidget(),
      'privacyPage': const PrivacyPageWidget(),
      'termPage': const TermPageWidget(),
      'adminDashboard': const AdminDashboardWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: Visibility(
        visible: responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ),
        child: GNav(
          selectedIndex: currentIndex,
          onTabChange: (i) => safeSetState(() {
            _currentPage = null;
            _currentPageName = tabs.keys.toList()[i];
          }),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          color: FlutterFlowTheme.of(context).secondaryText,
          activeColor: Colors.black,
          tabBackgroundColor: const Color(0x00000000),
          tabBorderRadius: 100.0,
          tabMargin: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          gap: 0.0,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          duration: const Duration(milliseconds: 500),
          haptic: false,
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
              iconSize: 24.0,
            ),
            GButton(
              icon: Icons.home,
              text: '@ 2024 WORKROOM Student Attendance System',
              iconSize: 0.0,
            ),
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
              iconSize: 24.0,
            ),
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
              iconSize: 24.0,
            ),
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
              iconSize: 24.0,
            ),
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
              iconSize: 24.0,
            ),
            GButton(
              icon: Icons.notifications_none_rounded,
              text: 'Home',
              iconSize: 24.0,
            )
          ],
        ),
      ),
    );
  }
}
