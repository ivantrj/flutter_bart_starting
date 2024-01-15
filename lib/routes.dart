import 'package:bart/bart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bart_starting/views/inbox.dart';
import 'package:flutter_bart_starting/views/library.dart';
import 'package:flutter_bart_starting/views/settings.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future appPushNamed(String route, {Object? arguments}) =>
    navigatorKey.currentState!.pushNamed(route, arguments: arguments);

List<BartMenuRoute> subRoutes() {
  return [
    BartMenuRoute.bottomBar(
      label: "Home",
      icon: Icons.inbox,
      path: '/home',
      pageBuilder: (context, _, __) => const InboxView(
        key: PageStorageKey<String>("inbox"),
      ),
    ),
    BartMenuRoute.bottomBar(
      label: "Library",
      icon: Icons.library_books,
      path: '/library',
      pageBuilder: (context, _, __) => const LibraryView(),
    ),
    BartMenuRoute.bottomBar(
      label: "Settings",
      icon: Icons.settings,
      path: '/settings',
      pageBuilder: (context, _, __) => const SettingsView(),
    ),
  ];
}
