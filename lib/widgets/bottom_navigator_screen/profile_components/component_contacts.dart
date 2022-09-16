import 'package:flutter/material.dart';
import 'package:flutter_application_1/icons/flutter_icons.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              height: 180,
              child: Placeholder(), // map stub
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Відділ продажу",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "м. Львів, вул. Галицького",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Divider(),
                  DefaultTextStyle(
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("пн-пт: 10:00 - 18:00"),
                        Text("сб: 10:00 - 16:00"),
                        Text("нд: вихідний"),
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.call, color: Colors.grey),
                    title: Text(
                      '3700',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Безкоштовно з мобільного"),
                  ),
                  ListTile(
                    leading: Icon(Icons.language, color: Colors.grey),
                    title: Text(
                      '+38 073 716 11 31',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                        "Для дзвінкув із-за кордону/ зі стаціонарних телефонів"),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Divider(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => print("facebook"),
                        icon: Icon(Flutter_Icon.facebook),
                        splashRadius: 15,
                      ),
                      IconButton(
                        onPressed: () => print("Instagram"),
                        icon: Icon(Flutter_Icon.instagram),
                        splashRadius: 15,
                      ),
                      IconButton(
                        onPressed: () => print("telegram"),
                        icon: Icon(Flutter_Icon.telegram),
                        splashRadius: 15,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
