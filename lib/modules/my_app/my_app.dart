import 'package:router_observer/helper/exports_helper.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Router Observer",
      initialRoute: AppRoutes.home,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorObservers: [RouteManager.pageRouteObserver],
    );
  }
}
