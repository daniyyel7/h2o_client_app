import 'package:go_router/go_router.dart';
import 'package:h2o_client_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(

  initialLocation: "/",

  routes: [

    GoRoute(
      path: '/',
      name: 'home_screen',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/viewproducts',
      name: 'view_products_screen',
      builder: (context, state) => const ViewProductsScreen(),
    ),




  ],
);