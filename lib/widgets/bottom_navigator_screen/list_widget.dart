import 'package:flutter/material.dart';

class Car {
  final String name;
  final String sum;
  final String imageName;

  Car({
    required this.name,
    required this.sum,
    required this.imageName,
  });
}

final _cars = [
  Car(
    name: 'Maybach GLS',
    sum: 'Від: 4 909 070.56 грн',
    imageName: 'images/60706d4506b18.png',
  ),
  Car(
    name: 'C-Клас Кабріо',
    sum: 'Від: 1 322 238.83 грн',
    imageName: 'images/606ed9343718d.png',
  ),
  Car(
    name: 'GLC Купе',
    sum: 'Від: 1 470 524.27 грн',
    imageName: 'images/606ed8c0840f7.png',
  ),
  Car(
    name: 'S-Клас Седан',
    sum: 'Від: 3 078 958.47 грн',
    imageName: 'images/606ed7e35b1b4.png',
  ),
  Car(
    name: 'Vito Tourer',
    sum: 'Від: 1 114 211.12 грн',
    imageName: 'images/60b64938de78f.png',
  ),
  Car(
    name: 'CLA Shooting Brake',
    sum: 'Від: 953 981.40 грн',
    imageName: 'images/606ed7fb08fec.png',
  ),
  Car(
    name: 'G-Клас',
    sum: 'Від: 3 581 271.11 грн',
    imageName: 'images/606ed885e7f9a.png',
  ),
  Car(
    name: 'E-Клас Купе',
    sum: 'Від: 1 473 028.15 грн',
    imageName: 'images/606ed83fca27f.png',
  ),
];

class CarListWidgets extends StatefulWidget {
  const CarListWidgets({Key? key}) : super(key: key);

  @override
  State<CarListWidgets> createState() => _CarListWidgetsState();
}

class _CarListWidgetsState extends State<CarListWidgets> {
  var _filtereCars = <Car>[];
  final _searchController = TextEditingController();

  void _searhCars() {
    final queri = _searchController.text;
    if (queri.isNotEmpty) {
      _filtereCars = _cars.where(
        (Car car) {
          return car.name.toLowerCase().contains(queri.toLowerCase());
        },
      ).toList();
    } else {
      _filtereCars = _cars;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filtereCars = _cars;
    _searchController.addListener(_searhCars);
  }

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    return Stack(
      children: [
        Container(
          child: ListView.builder(
            padding: EdgeInsets.only(top: 60),
            itemCount: _filtereCars.length,
            itemExtent: 280,
            itemBuilder: (BuildContext context, int index) {
              final car = _filtereCars[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Stack(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 300),
                      child: Container(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        car.name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 24),
                                      ),
                                      Text(
                                        car.sum,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Image.asset(car.imageName),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () => print('hi'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              label: Text('Пошук'),
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.white.withAlpha(500),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
