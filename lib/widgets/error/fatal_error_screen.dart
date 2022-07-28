import 'package:flutter/material.dart';

class FatalErorWidget extends StatelessWidget {
  const FatalErorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(214, 0, 0, 0),
      ),
      body: Center(
        child: Text('Дана функція в розробці ;)'),
      ),
    );
  }
}
