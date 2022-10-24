import 'package:go_router/go_router.dart';
import 'package:xetia_boilerplate/src/ui/pages/home/home_page.dart';

final routes = GoRouter(
  initialLocation: '/?title=Boilerplate Project',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        final title = state.queryParams['title'];
        return MyHomePage(
          title: title ?? 'Flutter Demo Home Page',
        );
      },
    )
  ],
);
