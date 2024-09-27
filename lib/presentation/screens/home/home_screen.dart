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
                height: 185.0,
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

            // Card lo más vendido
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Text(
                "Lo más vendido",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Cards productos
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  CardsProductCustom(
                    titleCard: 'Garrafón Lleno',
                    height: 200,
                  ),
                ],
              ),
            ),

            // Categorías
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Text(
                "Nuestras categorías",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
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
                      'assets/img/garrafon_categoria.png',
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
                        // Navegar a garrafones
                      },
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
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
                      'assets/img/garrafon_categoria.png',
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
                        // Navegar a botellas
                      },
                    ),
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
