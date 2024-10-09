import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h2o_client_app/presentation/widgets/cards/add_minus_widget.dart';

class CardsProductCustom extends StatelessWidget {
  final String titleCard;
  final String description;
  final String price;

  const CardsProductCustom({
    super.key,
    required this.titleCard,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: Colors.white,
        elevation: 4,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                width: 95,
                child: Image.asset('assets/img/garrafon.png'),
                //child: Image.network('http://picsum.photos/id/${1}/95/140'),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                    width: 220,
                    child: Text(
                      titleCard,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: 160,
                    child: Text(
                      maxLines: 3,
                      description,
                      style: const TextStyle(
                          fontSize: 10,
                          leadingDistribution:
                              TextLeadingDistribution.proportional),
                    )),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 210,
                  child: Text(
                    price,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 105, child: AddMinusCustom()),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 105,
                      height: 30,
                      child: FilledButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 360,
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Row(
                                          children: [
                                            Icon(
                                              Icons.check_circle_outline,
                                              size: 40,
                                              color: Colors.green,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Agregaste a tu carrito',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16)),
                                                Text(
                                                    'Garrafon vacio de 20 litros',
                                                    style:
                                                        TextStyle(fontSize: 12))
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Divider(
                                            thickness: 1,
                                            color: Color(0xFF34949C)),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                            'Agrega más productos a tu carrito',
                                            style: TextStyle(fontSize: 12)),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Card(
                                                color: Colors.white,
                                                child: Column(
                                                  children: [
                                                    //h140 w120
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 6.0,
                                                              bottom: 6),
                                                      child: SizedBox(
                                                        height: 80,
                                                        width: 120,
                                                        child: Image.asset(
                                                            'assets/img/garrafon.png'),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2, right: 2),
                                                      child: Text(
                                                        'Garrafon de 20 litros',
                                                        maxLines: 2,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 9),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 2,
                                                    ),
                                                    const Text('\$10.00',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 10)),
                                                    const SizedBox(
                                                      height: 6,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Card(
                                                color: Colors.white,
                                                child: Column(
                                                  children: [
                                                    //h140 w120
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 6.0,
                                                              bottom: 6),
                                                      child: SizedBox(
                                                        height: 80,
                                                        width: 120,
                                                        child: Image.asset(
                                                            'assets/img/garrafon.png'),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2, right: 2),
                                                      child: Text(
                                                        'Garrafon de 20 litros',
                                                        maxLines: 2,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 9),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 2,
                                                    ),
                                                    const Text('\$10.00',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 10)),
                                                    const SizedBox(
                                                      height: 6,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Card(
                                                color: Colors.white,
                                                child: Column(
                                                  children: [
                                                    //h140 w120
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 6.0,
                                                              bottom: 6),
                                                      child: SizedBox(
                                                        height: 80,
                                                        width: 120,
                                                        child: Image.asset(
                                                            'assets/img/garrafon.png'),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2, right: 2),
                                                      child: Text(
                                                        'Garrafon de 20 litros',
                                                        maxLines: 2,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 9),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 2,
                                                    ),
                                                    const Text('\$10.00',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 10)),
                                                    const SizedBox(
                                                      height: 6,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: SizedBox(
                                                height: 35,
                                                child: FilledButton(
                                                    onPressed: () {
                                                      context.goNamed(
                                                          'view_car_screen');
                                                    },
                                                    child: const Text(
                                                        'Ir al carrito')),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                                );
                              });
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Color(0xFFFFC40F))),
                        child: const Text('Agregar',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w100)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
