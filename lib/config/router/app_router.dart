import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
        ),
      ];
}
