import 'package:flutter/material.dart';

class AuthorizationWidget extends StatefulWidget {
  const AuthorizationWidget({Key? key}) : super(key: key);

  @override
  State<AuthorizationWidget> createState() => _ExemplState();
}

class _ExemplState extends State<AuthorizationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Авторизація'),
        backgroundColor: Color.fromARGB(214, 0, 0, 0),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      spreadRadius: 0,
                      offset: Offset(0, 0)),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Вхід',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    FormWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _loginTextKontroler =
      TextEditingController(text: 'admin'); // login: 'admin'
  final _passwordTextKontroler =
      TextEditingController(text: 'admin'); // password: 'admin'
  String? errorText;
  void _authorization() {
    final login = _loginTextKontroler.text;
    final password = _passwordTextKontroler.text;

    if (login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Не правельне ім\'я або пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    Navigator.of(context).pushNamed('/error');
  }

  void _registration() {
    Navigator.of(context).pushNamed('/error');
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null)
          Text(
            errorText,
            style: TextStyle(color: Colors.red),
          ),
        TextField(
          controller: _loginTextKontroler,
          decoration: InputDecoration(
            hintText: 'Ім\'я',
            prefixIcon: Icon(Icons.person),
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: _passwordTextKontroler,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Пароль",
            prefixIcon: Icon(Icons.password),
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 25),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: _authorization,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 88, 158, 216)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  ),
                ),
                child: Text(
                  'Вхід',
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Не зареєстровані?',
              style: TextStyle(fontSize: 15),
            ),
            TextButton(
              onPressed: _registration,
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.zero,
                ),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 15),
                ),
              ),
              child: Text(
                'Зареєструватися',
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.red.shade600),
              ),
            )
          ],
        ),
        TextButton(
          onPressed: _resetPassword,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            foregroundColor: MaterialStateProperty.all(
              Color.fromARGB(255, 88, 158, 216),
            ),
            textStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          child: Text(
            'Скинути пароль',
          ),
        ),
      ],
    );
  }
}
