import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.all(20),
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
                        onPressed: () {},
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
