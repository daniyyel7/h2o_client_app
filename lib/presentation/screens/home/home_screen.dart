// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
// import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';
// import 'package:h2o_client_app/presentation/widgets/cards/cards_product_custom.dart';
// import 'package:h2o_client_app/presentation/widgets/searachBar/serach_bar_custom.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // imgs para el carrusel
//     final List<String> imgList = [
//       'assets/img/slider1.png',
//       'assets/img/slider2.png',
//       'assets/img/slider3.png',
//     ];

//     return Scaffold(
//         appBar: const AppBarCustom(),
//         bottomNavigationBar: const BottomNavigatorBarCustom(),
//         backgroundColor: const Color(0xFFF0F5F5),
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Padding(
//                 padding: EdgeInsets.all(2.0),
//                 child: SearchBarCustom(),
//               ),
//               // carrusel
//               CarouselSlider(
//                 options: CarouselOptions(
//                   height: 180.0,
//                   autoPlay: true,
//                   enlargeCenterPage: true,
//                   autoPlayInterval: const Duration(seconds: 6),
//                   autoPlayAnimationDuration: const Duration(seconds: 6),
//                   autoPlayCurve: Curves.fastOutSlowIn,
//                   enableInfiniteScroll: true,
//                   viewportFraction: 0.85,
//                   scrollDirection: Axis.horizontal,
//                 ),
//                 items: imgList
//                     .map((item) => Container(
//                           margin: const EdgeInsets.all(2.0),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8.0),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black.withOpacity(0.1),
//                                 spreadRadius: 2,
//                                 blurRadius: 5,
//                                 offset: const Offset(0, 3),
//                               ),
//                             ],
//                           ),
//                           child: ClipRRect(
//                               borderRadius: BorderRadius.circular(15.0),
//                               child: Stack(
//                                 fit: StackFit.expand,
//                                 children: [
//                                   Image.asset(item, fit: BoxFit.cover),
//                                   Positioned(
//                                     bottom: 10.0,
//                                     left: 10.0,
//                                     right: 10.0,
//                                     child: Container(
//                                       padding: const EdgeInsets.symmetric(
//                                           vertical: 5.0, horizontal: 20.0),
//                                       decoration: BoxDecoration(
//                                           color: Colors.black.withOpacity(0.5),
//                                           borderRadius:
//                                               BorderRadius.circular(10.0)),
//                                     ),
//                                   )
//                                 ],
//                               )),
//                         ))
//                     .toList(),
//               ),
//               const SizedBox(height: 20.0),

//               // cards
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: GridView.count(
//                   crossAxisCount: 2,
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   childAspectRatio: 3 / 4,
//                   children: const [
//                     CardsProductCustom(titleCard: 'Garrafón de 20 litros', height: 200.0),
//                     SizedBox(height: 200.0),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/cards/cards_product_custom.dart';
import 'package:h2o_client_app/presentation/widgets/searachBar/serach_bar_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // imgs para el carrusel
    final List<String> imgList = [
      'assets/img/slider1.png',
      'assets/img/slider2.png',
      'assets/img/slider3.png',
    ];

    // Lista de productos con título, descripción y precio
    final List<Map<String, dynamic>> products = [
      {
        'title': 'Garrafón de 20 litros',
        'description': 'Garrafón de agua purificada de 20 litros.',
        'price': '\$50.00',
        'image': 'assets/img/garrafon.png'
      },
      {
        'title': 'Botella de 1 litro',
        'description': 'Botella de agua purificada de 1 litro.',
        'price': '\$10.00',
        'image': 'assets/img/botella.png'
      },
      // Agrega más productos según sea necesario
    ];

    return Scaffold(
      appBar: const AppBarCustom(),
      bottomNavigationBar: const BottomNavigatorBarCustom(),
      backgroundColor: const Color(0xFFF0F5F5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SearchBarCustom(),
            ),
            // Carrusel de imágenes
            CarouselSlider(
              options: CarouselOptions(
                height: 180.0,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(seconds: 6),
                autoPlayAnimationDuration: const Duration(seconds: 6),
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                viewportFraction: 0.78,
                scrollDirection: Axis.horizontal,
              ),
              items: imgList
                  .map((item) => Container(
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(item, fit: BoxFit.cover),
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 20.0),

            // Sección "Lo más vendido"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Lo más vendido",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Productos con el widget card

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: products.map((product) {
                        return CardsProductCustom(
                          titleCard: product['title'],
                          height:
                              200.0, // Ajusta la altura de la tarjeta según sea necesario
                        );
                      }).toList(),
                    ),
                  ),

                  // Categorías
                  const Text(
                    "Nuestras categorías",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/garrafon_categoria.png', // Reemplaza con la imagen correcta
                          width: 80.0,
                          height: 80.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20.0),
                        const Expanded(
                          child: Text(
                            "Garrafones",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            // Acción para navegar a la categoría de Garrafones
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/garrafon_categoria.png', // Reemplaza con la imagen correcta
                          width: 80.0,
                          height: 80.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20.0),
                        const Expanded(
                          child: Text(
                            "Botellas",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            // Acción para navegar a la categoría de Garrafones
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
