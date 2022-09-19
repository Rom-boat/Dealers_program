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
                      "Лінійка запасних частин Mercedes-Benz StarParts на ринку України",
                  imageName: 'assets/images/photo_2022-09-15_17-36-08.jpg',
                  bodyText:
                      "Компанія «АвтоКапітал», офіційний дистриб'ютор Mercedes-Benz AG в Україні (Корпорація УкрАВТО), постійно запроваджує ефективні програми та послуги, щоб у комплексі з іншими перевагами, незважаючи на надзвичайно складний час, підтримувати та розвивати роботу офіційної дилерської мережі. І на черзі важлива новина у сфері запасних частин від Mercedes-Benz AG: відтепер українським клієнтам доступна лінійка StarParts. \nStarParts – альтернативна лінійка запасних частин Mercedes-Benz для моделей легкових автомобілів, знятих з виробництва, створена за принципом оптимізації конструкції та матеріалів із збереженням якості та ресурсних показників відповідно до стандартів Mercedes-Benz. \nАсортимент лінійки StarParts – запчастини для ТО та зношувані запчастини (фільтри, гальмівні диски та колодки, свічки, акумулятори, щітки склоочисника, тощо) для автомобілів старше 5 років. Запасні частини лінійки доступні як при замовленні сервісних робіт, так і в роздрібних чи оптових закупівлях.",
                ),
                CardNewsWidget(
                  titleText:
                      'Інформація про роботу дилерських центрів (оновлено станом на 01.06.2022)',
                  imageName: 'assets/images/photo_2022-09-15_17-59-23.jpg',
                  bodyText:
                      "Офіційна дилерська мережа Mercedes-Benz в Україні здійснює сервісне обслуговування у регіонах, де зберігається можливість безпечної діяльності.\nНаразі не працює підприємство у Херсоні. Дилерські центри в інших містах працюють у звичайному або черговому режимі. Про будь-які зміни у роботі будемо інформувати додатково.\nКомпанія «АвтоКапітал» докладає максимальних зусиль для забезпечення мережі усім необхідним для обслуговування клієнтів. У цей складний час працюємо заради майбутнього держави! Все буде Україна!",
                ),
                CardNewsWidget(
                  titleText:
                      'Стильне оновлення популярного Mercedes-AMG GT 4-Door Coupé',
                  imageName: 'assets/images/photo_2022-09-15_21-03-25.jpg',
                  bodyText:
                      "Компанія «АвтоКапітал», офіційний імпортер Mercedes-Benz в Україні, повідомляє про надходження в дилерську мережу оновленого Mercedes-AMG GT 4-Door Coupé – підвищений комфорт під час руху, розширений вибір комплектацій та ексклюзивна спецверсія, що надає ще більше індивідуальності. Для клієнтів доступні для замовлення усі 4 версії купе AMG GT 4-Door: 43, 43 4MATIC+, 53 4MATIC+ та найпотужніший серійний автомобіль підрозділу AMG – 63 S E Performance Plug-in-Hybrid. \nПопулярне у всьому світі 4-дверне купе AMG GT стало ще більш індивідуальним, тим самим зміцнивши свої позиції як ідеального автомобільного компаньона у будь-якій життєвій ситуації. Ексклюзивна спецверсія підкреслює багатогранний характер чотиридверного спортивного автомобіля. Вона пропонує розширений вибір коліс, оббивки, оздоблення, кольорів кузова та переналаштовану підвіску з ще ширшим діапазоном між спортивністю та комфортом. Завдяки широким оновленням 4-дверне купе AMG GT має найсучасніші технології. Нововведення включають оновлені допоміжні системи, панель приладів з широкоформатним дисплеєм, що встановлюється серійно, включаючи мультимедійну систему MBUX з властивою AMG індикацією та функціями. Нові моделі дебютували із 6-циліндровими двигунами. \nТретій повністю розроблений Mercedes-AMG автомобіль є продовженням історії успіху. 4-дверне купе AMG GT відкрило нові групи клієнтів та викликало велику симпатію до бренда. Воно поєднує в собі найвищу динаміку спорткара AMG GT з підвищеною повсякденною практичністю завдяки чотирьом дверям та місткості до п'яти осіб. Продумана пневмопідвіска, функція активного підрулювання коліс заднього мосту, повний привід, що повністю регулюється, і сучасна загальна концепція надихають покупців у всьому світі. Враховуючи, що автомобіль є рекордсменом, який показав найкращий час на гоночній трасі Нюрбургрінг «Північна петля», стає очевидним, що технології та точне налаштування знаходяться на найвищому рівні та визначають стандарти у своєму сегменті. \nМодель також задала новий рівень оформлення інтер'єру завдяки високоякісному та точному дизайну всіх поверхонь та компонентів, інноваційним елементам управління дисплеєм, кнопкам на рульовому колесі та численним конфігураціям сидінь та обладнання. Ця модель вже пропонувала вражаючий набір варіантів індивідуального налаштування для цього сегмента – від трьох конфігурацій сидінь у задній частині та набору пакетів обладнання до індивідуальних опцій, притаманних AMG. Тепер додалися додаткові привабливі варіанти.",
                ),
                CardNewsWidget(
                  titleText:
                      'G-Class Private Lounge – новий цифровий простір для зустрічі усіх шанувальників G-Класу',
                  imageName: 'assets/images/photo_2022-09-15_21-16-23.jpg',
                  bodyText:
                      "Компанія «АвтоКапітал», офіційний дистриб’ютор Mercedes-Benz в Україні (Корпорація УкрАВТО), повідомляє про відкриття нового цифрового простору для шанувальників G-Класу в усьому світі – G-Class Private Lounge. Тепер усі «G»-поціновувачі можуть ділитися своїм цікавим досвідом один з одним у одному місці. Новий digital-простір дозволяє дізнатися про все, що пов'язане із культовим позашляховиком, а також дає можливість зв'язатися з експертами з G-Класу та отримувати запрошення на ексклюзивні заходи. \nG-Class Private Lounge – це цифрова спільнота власників G-Класу, клієнтів та шанувальників моделі з усього світу. Це центр усього, що визначає перевагу G-Класу протягом десятиліть: безмежна свобода, виразна пристрасть та незабутні пригоди на асфальті чи далеко від звичних доріг. Private Lounge пропонує ексклюзивний контент про культовий позашляховик — від останніх новин до незвичайних історій, довідкової інформації, інтерв'ю, запрошень на унікальні події та дискусійного майданчика.",
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
  final String bodyText;
  final String imageName;

  const CardNewsWidget({
    Key? key,
    required this.titleText,
    required this.imageName,
    required this.bodyText,
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
                  onPressed: () => _myShet(context),
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

  _myShet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      barrierColor: Colors.black87,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: 0.5,
          maxChildSize: 0.9,
          builder: (_, controller) => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: ListView(
              controller: controller,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 20,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 87, 87, 87),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      height: 5,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          imageName,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        titleText,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(bodyText),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
