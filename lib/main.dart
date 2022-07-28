import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/authorization/authorization_widget.dart';
import 'package:flutter_application_1/widgets/error/fatal_error_screen.dart';
import 'package:flutter_application_1/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Auth': (context) => AuthorizationWidget(),
        '/main_screen': (context) => MainScreenWidget(),
        '/error': (context) => FatalErorWidget(),
      },
      initialRoute: '/Auth',
    );
  }
}
