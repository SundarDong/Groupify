import 'package:authentication_ui/View/onboarding/onboardingScreen.dart';  // Import the OnboardingScreen
import 'package:authentication_ui/router/router.dart';
import 'package:authentication_ui/View/screens/authentication_ui.dart';
import 'package:authentication_ui/View/screens/forget_password.dart';
import 'package:authentication_ui/View/screens/login_page.dart';
import 'package:authentication_ui/View/screens/new_password.dart';
import 'package:authentication_ui/View/screens/otp_verification.dart';
import 'package:authentication_ui/View/screens/password_changed.dart';
import 'package:authentication_ui/View/screens/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/onboarding',  // Set the initial route to the onboarding page
  routes: [
    // Onboarding screen route
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),  // Show OnboardingScreen first
    ),
    // Authentication screen route
    GoRoute(
      path: Routers.authenticationpage.path,
      name: Routers.authenticationpage.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: AuthenticationUI());
      },
    ),
    // Login page route
    GoRoute(
      path: Routers.loginpage.path,
      name: Routers.loginpage.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: LoginPage());
      },
    ),
    // Sign-up page route
    GoRoute(
      path: Routers.signuppage.path,
      name: Routers.signuppage.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: SignupPage());
      },
    ),
    // Forgot password page route
    GoRoute(
      path: Routers.forgetpassword.path,
      name: Routers.forgetpassword.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: ForgetPasswordPage());
      },
    ),
    // New password page route
    GoRoute(
      path: Routers.newpassword.path,
      name: Routers.newpassword.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: NewPasswordPage());
      },
    ),
    // OTP verification page route
    GoRoute(
      path: Routers.otpverification.path,
      name: Routers.otpverification.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: OtpVerificationPage());
      },
    ),
    // Password changes page route
    GoRoute(
      path: Routers.passwordchanges.path,
      name: Routers.passwordchanges.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: PasswordChangesPage());
      },
    ),
  ],
);
