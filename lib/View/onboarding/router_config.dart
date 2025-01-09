import 'package:authentication_ui/View/onboarding/onboardingScreen.dart';
import 'package:go_router/go_router.dart';
// Correct import path

final GoRouter router = GoRouter(
  initialLocation: '/onboarding',  // Set initial route for the app
  routes: [
    // Onboarding screen route
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    // Additional routes can be added here as needed
    // GoRoute(
    //   path: '/home',
    //   builder: (context, state) => const HomeScreen(),
    // ),
  ],
);
