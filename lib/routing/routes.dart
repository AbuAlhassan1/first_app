import 'package:first_app/views/pages/home/home.dart';
import 'package:first_app/views/pages/on_boarding/on_boarding_page_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter routes = GoRouter(
  initialLocation: '/on_boarding',
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePagesWrapper(),
    ),
    GoRoute(
      path: "/on_boarding",
      builder: (context, state) => const OnBoardingPageWrapper(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const Placeholder(),
    ),
    GoRoute(
      path: "/settings",
      builder: (context, state) => const Placeholder(),
    ),
  ],
);