import 'package:go_router/go_router.dart';
import 'package:h2o_client_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: "/ticketorder",
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
    GoRoute(
      path: '/categoriesBotellas',
      name: 'categories_screen_botellas',
      builder: (context, state) => const CategoriesScreenBotellas(),
    ),
    GoRoute(
      path: '/categoriesGarrafones',
      name: 'categories_screen_garrafones',
      builder: (context, state) => const CategoriesScreenGarrafones(),
    ),
    GoRoute(
      path: '/login',
      name: 'login_screen',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      name: 'register_screen',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/resetpassword',
      name: 'resetpassword_screen',
      builder: (context, state) => const ResetPasswordScreen(),
    ),
    GoRoute(
      path: '/confirmationemail',
      name: 'confirmationemail_screen',
      builder: (context, state) => const ConfirmationEmailPassword(),
    ),
    GoRoute(
      path: '/myorders',
      name: 'myorders_screen',
      builder: (context, state) => const MyOrdersScreen(),
    ),
    GoRoute(
      path: '/detailorder',
      name: 'detailorder_screen',
      builder: (context, state) => const DetailOrderScreen(),
    ),
    GoRoute(
      path: '/ticketorder',
      name: 'ticketorder_screen',
      builder: (context, state) => const TicketOrderScreen(),
    ),
  ],
);
