import 'package:flutter/material.dart';
import 'package:h2o_client_app/presentation/widgets/appBar/app_bar_widget.dart';
import 'package:h2o_client_app/presentation/widgets/bottomNavigatorBar/bottom_navigator_bar_widget.dart';

class ViewCarScreen extends StatelessWidget {
  const ViewCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(),
      bottomNavigationBar: const BottomNavigatorBarCustom(),
      backgroundColor: const Color(0xFFF0F5F5),
  body: SingleChildScrollView(
    child: Column(
      children: [
         // Separación entre el buscador y las cards
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 2, color: Color(0xFF08A5C0)),
                    ),
                    SizedBox(width: 8), 
                    Text(
                      'Carrito',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(width: 8), 
                    Expanded(
                      child: Divider(thickness: 2, color: Color(0xFF08A5C0)),
                    ),
                  ],
                ),
              ),
    
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Card(
                  color: Colors.white,
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
    
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Text('Productos',textAlign: TextAlign.left, style: TextStyle(
                            fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          ),),
                        ),
                       
                        Row(
                          children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                            child: SizedBox(
                              width: 60,
                              child: Image.asset('assets/img/garrafon.png')
                            ),
                          ),
                 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
    
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text('Garrafon de 20 litros', style: TextStyle(
                                                          fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                                                        ),),
                              ),
                              
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0, bottom: 10),
                                child: Wrap(
                                  spacing: 25,
                                  children: [
                                    Text('Eliminar'),
                                    Text('Guardar'),
                                  ],
                                ),
                              ),
    
    
                                SizedBox(
                                  width: 130,
                                  child: DropdownButton(
                                    borderRadius: BorderRadius.circular(10),
                                    isExpanded: true,
                                    value: 1,
                                  items: const [
                                    DropdownMenuItem(value: 1 , child: Text('1 unidad', style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14 ),),),
                                    DropdownMenuItem(value: 2 , child: Text('2 unidad', style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14 ),),),
                                    DropdownMenuItem(value: 3 , child: Text('3 unidad', style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14 ),),),
                                    DropdownMenuItem(value: 4 , child: Text('4 unidad', style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14 ),),),
                                  ],
                                  onChanged: (value) {
                                    
                                  },
                                  ),
                                ),
    
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 10.0, top: 5),
                                  child: SizedBox(
                                    width: 220,
                                    child: Expanded(
                                      child: Text('\$ 10.00', textAlign: TextAlign.end, style: TextStyle(
                                                            fontSize: 15,
                                                          ),),
                                    )),
                                )
    
                 
                              
                            ],
                          )
                 
                          
                        ],),
    
    
    
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: Expanded(
                                                child: Divider(thickness: 1, color: Color.fromARGB(255, 172, 172, 172)),
                                              ),
                          ),
                        ),
    
    
    
    
    
         Row(
                          children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                            child: SizedBox(
                              width: 60,
                              child: Image.asset('assets/img/garrafon.png')
                            ),
                          ),
                 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
    
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text('Garrafon de 20 litros', style: TextStyle(
                                                          fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                                                        ),),
                              ),
                              
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0, bottom: 10),
                                child: Wrap(
                                  spacing: 25,
                                  children: [
                                    Text('Eliminar'),
                                    Text('Guardar'),
                                  ],
                                ),
                              ),
    
    
                                SizedBox(
                                  width: 130,
                                  child: DropdownButton(
                                    borderRadius: BorderRadius.circular(10),
                                    isExpanded: true,
                                    value: 1,
                                  items: const [
                                    DropdownMenuItem(value: 1 , child: Text('1 unidad', style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14 ),),),
                                    DropdownMenuItem(value: 2 , child: Text('2 unidad', style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14 ),),),
                                    DropdownMenuItem(value: 3 , child: Text('3 unidad', style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14 ),),),
                                    DropdownMenuItem(value: 4 , child: Text('4 unidad', style: TextStyle( fontWeight: FontWeight.normal, fontSize: 14 ),),),
                                  ],
                                  onChanged: (value) {
                                    
                                  },
                                  ),
                                ),
    
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 10.0, top: 5),
                                  child: SizedBox(
                                    width: 220,
                                    child: Expanded(
                                      child: Text('\$ 10.00', textAlign: TextAlign.end, style: TextStyle(
                                                            fontSize: 15,
                                                          ),),
                                    )),
                                )
    
                 
                              
                            ],
                          )
                 
                          
                        ],),
    
    
    
    
    
    
    
    
                      ],
                    ),
                  ),
                ),
               ),


               const Card(
                  color: Colors.white,
                  child: Text('data'),)
    
           
      ],
    ),
  ),
      
    );
  }
}
