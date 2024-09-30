import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/searachBar/serach_bar_custom.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF08A5C0),
      child: Stack(
        children: [
          Column(
            children: [
              SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'assets/img/logo.png',
                            scale: 2.5,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text('LINDA VISTA',
                                  style: TextStyle(fontSize: 10, color: Colors.white)),
                              SizedBox(
                                width: 5,
                              ),
                              Text('',
                                  style: TextStyle(fontSize: 7, color: Colors.white)),
                              SizedBox(height: 5,)
                            ],
                          ),
                          const SizedBox(
                            width: 230,
                          ),
                          const Badge(
                            label: Text('4'),
                            child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 37.2,
                color: const Color(0xFFF0F5F5),
              )
            
            ],
          ),
          const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: SizedBox(
                              height: 60,
                              width: 300,
                              child: SearchBarCustom()),
                          ),
                        ],
                      )
        
        ],
      ),
    );

  }
}
