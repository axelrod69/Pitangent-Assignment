import 'package:go_router/go_router.dart';
import 'package:movie_app/features/homeScreen/presentation/screen/homeScreen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/', 
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => HomeScreen(),
      ),

      // Add more routes here
      // GoRoute(
      //   path: '/profile',
      //   name: 'profile',
      //   builder: (context, state) => const ProfileScreen(),
      // ),
    ],
  );
}
