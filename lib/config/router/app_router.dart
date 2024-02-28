import 'package:go_router/go_router.dart';

import 'package:cinemapedia/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/home/0', routes: [
  GoRoute(
      path: '/home/:page',
      name: HomeScreen.name,
      builder: (context, state) {
        final pageIndex = state.pathParameters['page'] ?? '0';
        final pageIndexToInt = int.parse(pageIndex);
        return HomeScreen(pageIndex: pageIndexToInt);
      },
      routes: [
        GoRoute(
          path: 'movie/:id',
          name: MovieScreen.name,
          builder: (context, state) {
            final movieId = state.pathParameters['id'] ?? '0';
            final movieIdToInt = int.parse(movieId);
            return MovieScreen(movieId: movieIdToInt);
          },
        ),
      ])
]);
