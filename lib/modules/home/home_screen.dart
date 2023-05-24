import 'package:router_observer/helper/exports_helper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    RouteManager.pageRouteObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void dispose() {
    RouteManager.pageRouteObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    final route = ModalRoute.of(context)?.settings.name;
    debugPrint('didPush route: $route');
  }

  @override
  void didPopNext() {
    final route = ModalRoute.of(context)?.settings.name;
    debugPrint('didPopNext route: $route');
  }

  @override
  void didPushNext() {
    final route = ModalRoute.of(context)?.settings.name;
    debugPrint('didPushNext route: $route');
  }

  @override
  void didPop() {
    final route = ModalRoute.of(context)?.settings.name;
    debugPrint('didPop route: $route');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async =>
              await Navigator.pushNamed(context, AppRoutes.profile),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.lightGreen),
          ),
          child: const Text("Go to Profile Page"),
        ),
      ),
    );
  }
}
