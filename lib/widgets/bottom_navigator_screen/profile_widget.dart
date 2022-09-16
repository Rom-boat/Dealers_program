import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 20, vertical: 15);
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHederWidget(),
              SizedBox(
                height: 10,
              ),
              ProfileBodyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileHederWidget extends StatelessWidget {
  const ProfileHederWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 90,
            height: 90,
            child: ClipOval(
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT795AXP21onWsWXBK_41Agvq7PM1Ly4160Ow&usqp=CAU'),
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Roman',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Text(
                'kydru4@gmail.com',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const contentPadding = EdgeInsets.symmetric(horizontal: 20);
    const minLeadingWidths = 9.0;
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            hoverColor: Colors.red,
            minLeadingWidth: minLeadingWidths,
            contentPadding: contentPadding,
            leading: Icon(Icons.notifications, color: Colors.yellow.shade700),
            title: Text('Сповіщення'),
            onTap: () {
              print('сповіщення');
            },
          ),
          ListTile(
            minLeadingWidth: minLeadingWidths,
            contentPadding: contentPadding,
            leading: Icon(Icons.favorite, color: Colors.red),
            title: Text('Вподобання'),
            onTap: () {
              print('вподобання');
            },
          ),
          ListTile(
            minLeadingWidth: minLeadingWidths,
            contentPadding: contentPadding,
            leading: Icon(
              Icons.search,
              color: Colors.black54,
            ),
            title: Text('Пошук запчастин'),
            onTap: () {
              print('Пошук запчастин');
            },
          ),
          ListTile(
            minLeadingWidth: minLeadingWidths,
            contentPadding: contentPadding,
            leading:
                Icon(Icons.card_travel_rounded, color: Colors.red.shade200),
            title: Text('Аксесуари'),
            onTap: () {
              print('Аксесуари');
            },
          ),
          ListTile(
            minLeadingWidth: minLeadingWidths,
            contentPadding: contentPadding,
            leading: Icon(Icons.discount, color: Colors.green),
            title: Text('Акції'),
            onTap: () {
              print('Акції');
            },
          ),
          ListTile(
            minLeadingWidth: minLeadingWidths,
            contentPadding: contentPadding,
            leading: Icon(
              Icons.contacts,
              color: Colors.orange,
            ),
            title: Text('Контакти'),
            onTap: () {
              print('Контакти');
            },
          ),
          Divider(),
          ListTile(
            minLeadingWidth: minLeadingWidths,
            contentPadding: contentPadding,
            leading: Icon(Icons.exit_to_app, color: Colors.black),
            title: Text('Вийти'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/Auth');
            },
          )
        ],
      ),
    );
  }
}
