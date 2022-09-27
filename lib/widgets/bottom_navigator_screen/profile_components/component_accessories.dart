import 'package:flutter/material.dart';

import '../../../material/material.dart';

class AccessoriesWidget extends StatelessWidget {
  const AccessoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UIConstants.appbarTitle,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          CardAccessoriesWidget(
            imageName: 'assets/images/60a51487a4488.jpg',
            title: "Брелок для ключів AMG",
            subtitle:
                "Практичний брелок для ключів, виконаний з карбонової шкіри і прикрашений значком AMG, в одну мить наведе порядок в ключах. Брелок має поворотно-пружинну застібку, а також три додаткових міні-кільця для швидкої заміни і вилучення ключів.",
            price: "2 542",
          ),
          CardAccessoriesWidget(
            imageName: 'assets/images/60a6b293c2dd7.jpg',
            title: "Термос",
            subtitle:
                "На роботі, в походах або інших заходах: в термосі Mobility напої надовго збережуть свою температуру. Завдяки подвійним стінкам із нержавіючої сталі кава або чай залишаться гарячими до дванадцяти годин. А вода, сік, Шорле та інші освіжаючі напої - до 24 годин прохолодними. У комплект входить термокружка для зручного пиття. Термос можна носити з собою в сумці або рюкзаку: 100% герметичність виключає протікання рідини. Вироблений фірмою emsa для Mercedes-Benz термос сріблясто-чорного кольору має сатиновану поверхню. Дизайн завершує нанесена лазером гравірування зірки Mercedes-Benz.",
            price: "2 186",
          ),
          CardAccessoriesWidget(
            imageName: 'assets/images/60a516a433192.jpg',
            title: "Бейсболка",
            subtitle:
                "Оптимальний головний убір в сонячні дні: жіноча бейсболка  чорного кольору. Виготовлена з 100% бавовни і доповнена контрастними елементами золотисто-бежевого кольору. Велюрова поверхня робить бейсболку м'якою на дотик і зручною. Завдяки практичній застібці з логотипом «Мерседес-Бенц» її можна адаптувати до будь-якій формі голови для надійної посадки. Вишита зірка «Мерседес-Бенц» золотисто-бежевого кольору попереду гармонійно завершує модний дизайн.",
            price: "933",
          ),
          CardAccessoriesWidget(
            imageName: 'assets/images/60816a5fa1f76.jpg',
            title: "Дорожня сумка AMG",
            subtitle:
                "Сумка чорного кольору виготовлена з високоякісної шкіри і своєму розпорядженні достатньо місця для одягу і взуття, включає в себе велике основне відділення, яке може бути закрито металевою блискавкою і доповнено двосторонньої оригінальної стрічкою в стилі автомобільних сидінь AMG. Крім приємних шкіряних ручок, дорожню сумку можна носити і з допомогою наплечного ременя, який, до того ж, має шкіряну наплечную накладку. Металеві деталі блискучого кольору «збройовий метал» ідеально доповнюють елегантний дизайн сумки. Розміри: прибл. 50 x 30 x 28,5 см",
            price: "24 327",
          ),
        ],
      ),
    );
  }
}

class CardAccessoriesWidget extends StatelessWidget {
  final String imageName;
  final String title;
  final String subtitle;
  final String price;

  const CardAccessoriesWidget({
    Key? key,
    required this.imageName,
    required this.title,
    required this.subtitle,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(0),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 130,
                height: 130,
                child: Image.asset(
                  imageName,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              "$price грн",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.brown.shade500,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
