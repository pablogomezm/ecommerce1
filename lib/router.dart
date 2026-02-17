import 'package:go_router/go_router.dart';
import 'screens/catalog_screen.dart';
import 'screens/product_detail_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CatalogScreen(),
    ),
    GoRoute(
      path: '/product/:id',
      builder: (context, state) => ProductDetailScreen(
        productId: state.pathParameters['id']!,
      ),
    ),
  ],
);
