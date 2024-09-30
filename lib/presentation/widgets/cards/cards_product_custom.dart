import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/cards/add_minus_widget.dart';

class CardsProductCustom extends StatelessWidget {
  final String titleCard;
  final double height;

  const CardsProductCustom(
      {super.key, required this.titleCard, required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Center(
          child: Card(
        color: Colors.white,
        child: SizedBox(
            height: height,
            child: Row(
              children: [
                const _ImageProdcutCard(
                  urlImage: 'assets/img/logo.png',
                ),
                Expanded(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          const _TitleProduct(
                            title: 'Garrafón',
                          ),
                          const SizedBox(
                            child: _DescriptionProduct(
                              description:
                                  'Descripcion del producto asdasdasdasda sadas das dasdasdasdasd asdasdasdeffwefwef',
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Precio',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const AddMinusCustom(),
                                  _ButtonAdd(),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
      )),
    );
  }
}

class _ButtonAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 60,
      child: TextButton(
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.amber),
        ),
        child: const Text(
          'Agregar',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black),
        ),
        onPressed: () {},
      ),
    );
  }
}

class _DescriptionProduct extends StatelessWidget {
  final String description;
  const _DescriptionProduct({
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(description, style: const TextStyle(fontSize: 12));
  }
}

class _TitleProduct extends StatelessWidget {
  final String title;
  const _TitleProduct({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600));
  }
}

class _ImageProdcutCard extends StatelessWidget {
  final String urlImage;

  const _ImageProdcutCard({
    required this.urlImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: 180,
        width: 99,
        child: Image(image: AssetImage(urlImage)),
      ),
    );
  }
}
