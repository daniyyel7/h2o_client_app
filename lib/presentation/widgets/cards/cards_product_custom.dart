import 'package:flutter/material.dart';

class CardsProductCustom extends StatelessWidget {
  final String titleCard;
  final double height;

  const CardsProductCustom({
    super.key, 
    required this.titleCard,
    required this.height
    });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      color: Colors.white,
      child: SizedBox(
        height: height,
        width: 350,
        child: 
            Row(
              children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 180,
                width: 99,
                child: Image(
                  image: AssetImage('assets/img/logo.png')
                ),
              ),
            ),
                Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text('Titulo', style: TextStyle( fontSize: 18, fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 80,
                          width: 230,
                          child: Text('Descripcion del prodcuto sdjdsh asdhasdhuad asdhauhd sajdbjabdashdhadjhsjhda', style: TextStyle( fontSize: 12))),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('Precio', style: TextStyle( fontSize: 12, fontWeight: FontWeight.w600)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(width: 8),
                            TextButton(
                              child: const Text('Si'),
                              onPressed: () {/* ... */},
                            ),
                            SizedBox(
                              height: 40,
                              width: 100,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFFFFC40F),
                                  
                                ),
                                child: const Text('Agregar'),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
      ),
    ));
  }
}
