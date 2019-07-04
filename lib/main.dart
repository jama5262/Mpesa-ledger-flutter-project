import 'package:flutter/material.dart';

import 'package:mpesa_ledger_flutter/routes/routes.dart';
import 'package:mpesa_ledger_flutter/widgets/bottom_navigation.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Navigator(
          key: navigatorKey,
          onGenerateRoute: RouteGenerator.generateRoute
        ),
        bottomNavigationBar: BottomNavigationBarWidget(navigatorKey),
      ),
    );
  }
}
