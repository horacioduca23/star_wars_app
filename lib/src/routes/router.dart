import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/domain/result.dart';
import '../features/detail_page/presentation/pages/detail_page.dart';
import '../features/home/presentation/pages/home_page.dart';
import 'app_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.home.path,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: AppRoutes.details.path,
            builder: (BuildContext context, GoRouterState state) {
              return DetailPage(
                result: state.extra as Result,
              );
            },
          ),
        ],
      ),
    ],
  );
}
