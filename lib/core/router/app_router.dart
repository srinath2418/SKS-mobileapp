import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/auth/login_screen.dart';
import '../../features/auth/signup_screen.dart';
import '../../features/home/main_screen.dart';
import '../../features/learning/course_detail_screen.dart';
import '../../features/events/event_detail_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignupScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => MainScreen(),
    ),
    GoRoute(
      path: '/course/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return CourseDetailScreen(courseId: id);
      },
    ),
    GoRoute(
      path: '/event/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return EventDetailScreen(eventId: id);
      },
    ),
  ],
);
