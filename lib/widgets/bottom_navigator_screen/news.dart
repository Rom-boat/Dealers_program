import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Image.asset('assets/images/header.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Новини та події",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Короткий огляд найважливіших новин від Mercedes-Benz."),
                SizedBox(
                  height: 20,
                ),
                CardNewsWidget(
                  titleText:
                      'Лінійка запасних частин Mercedes-Benz StarParts на ринку України',
                  imageName: 'assets/images/photo_2022-09-15_17-36-08.jpg',
                ),
                CardNewsWidget(
                  titleText:
                      'Інформація про роботу дилерських центрів (оновлено станом на 01.06.2022)',
                  imageName: 'assets/images/photo_2022-09-15_17-59-23.jpg',
                ),
                CardNewsWidget(
                  titleText:
                      'Стильне оновлення популярного Mercedes-AMG GT 4-Door Coupé',
                  imageName: 'assets/images/photo_2022-09-15_21-03-25.jpg',
                ),
                CardNewsWidget(
                  titleText:
                      'G-Class Private Lounge – новий цифровий простір для зустрічі усіх шанувальників G-Класу',
                  imageName: 'assets/images/photo_2022-09-15_21-16-23.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardNewsWidget extends StatelessWidget {
  final String titleText;
  final String imageName;

  const CardNewsWidget({
    Key? key,
    required this.titleText,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 140,
          child: Image.asset(
            imageName,
            fit: BoxFit.cover,
          ),
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Color.fromARGB(255, 87, 87, 87),
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: Text(
                  titleText,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
            Positioned(
              bottom: -15,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  child: const Text(
                    "ДЕТАЛЬНІШЕ",
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  ),
                  onPressed: () => print("hi"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    elevation: MaterialStateProperty.all(9),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(
                      Size(80, 40),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
