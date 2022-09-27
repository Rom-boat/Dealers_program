import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/authorization/authorization_widget.dart';
import 'package:flutter_application_1/widgets/bottom_navigator_screen/profile_components/component_accessories.dart';
import 'package:flutter_application_1/widgets/bottom_navigator_screen/profile_components/component_contacts.dart';

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
