import 'package:flutter/material.dart';
import '../../../material/material.dart';

class SharesWidget extends StatelessWidget {
  const SharesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mercedes'),
        backgroundColor: UIConstants.myColor,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          CardSharesWidget(
              imageName: 'assets/images/60fc2c12a9489.jpg',
              title: "Mercedes-Benz Vito Tourer",
              subtitle: "SELECT 116 CDI довгий",
              price: "2 451 700",
              pricePerMonth: "59 200",
              advantage: "80 000"),
          SizedBox(height: 20),
          CardSharesWidget(
              imageName: 'assets/images/62fb8b585c1c7.jpg',
              title: "Mercedes-Benz Sprinter ",
              subtitle: "Chassis 516 CDI довгий",
              price: "1 747 882 грн",
              pricePerMonth: "25 200",
              advantage: "90 000"),
          SizedBox(height: 20),
          CardSharesWidget(
              imageName: 'assets/images/60b987b3c592c.jpg',
              title: "Тримач для велосипедів ",
              subtitle: "",
              price: "8 000",
              pricePerMonth: "2 000",
              advantage: "1 000"),
        ],
      ),
    );
  }
}

class CardSharesWidget extends StatelessWidget {
  final String imageName;
  final String title;
  final String? subtitle;
  final String price;
  final String pricePerMonth;
  final String advantage;
  const CardSharesWidget({
    Key? key,
    required this.imageName,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.pricePerMonth,
    required this.advantage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(52, 121, 184, 1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                imageName,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 7),
            Text(
              title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Text(subtitle!),
            Divider(
              indent: 50,
              endIndent: 50,
              color: Colors.black,
              height: 20,
            ),
            Text(
              "$price грн.",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 7,
            ),
            Text("$pricePerMonth грн / місяць"),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 246, 246),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, spreadRadius: -2, blurRadius: 20),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.discount_outlined, color: Colors.green),
                    Text("Вигода $advantageгрн"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
