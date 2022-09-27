import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/authorization/authorization_widget.dart';
import 'package:flutter_application_1/widgets/bottom_navigator_screen/profile_components/component_accessories.dart';
import 'package:flutter_application_1/widgets/bottom_navigator_screen/profile_components/component_contacts.dart';

import 'package:flutter_application_1/widgets/bottom_navigator_screen/profile_components/conponent_shares.dart';
import 'package:flutter_application_1/widgets/error/fatal_error_screen.dart';
import 'package:flutter_application_1/widgets/main_screen/main_screen_widget.dart';
import 'class_cars/class_Maybach.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/shares': (context) => SharesWidget(),
        '/Auth': (context) => AuthorizationWidget(),
        '/main_screen': (context) => MainScreenWidget(),
        '/error': (context) => FatalErorWidget(),
        '/contacts': (context) => ContactsWidget(),
        '/accessories': (context) => AccessoriesWidget(),
        '/maybachclass': (context) => MaybachClassWidtet(),
      },
      initialRoute: '/Auth',
    );
  }
}
