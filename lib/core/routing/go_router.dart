import 'package:go_router/go_router.dart';
import 'package:interview_bank/features/search/presentation/search_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SearchScreen(),
    ),
  ],
);
