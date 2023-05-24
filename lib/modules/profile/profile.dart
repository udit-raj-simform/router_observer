import 'package:router_observer/helper/exports_helper.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with RouteAware {

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
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async =>
              await Navigator.pushNamed(context, AppRoutes.like),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.redAccent),
              ),
              child: const Text("Go to Likes Page"),
            ),
            ElevatedButton(
              onPressed: () async =>
              await Navigator.pushNamed(context, AppRoutes.chat),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.blueAccent),
              ),
              child: const Text("Go to Chat Page"),
            ),
            ElevatedButton(
              onPressed: () async =>
              await Navigator.pushNamed(context, AppRoutes.category),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.amber),
              ),
              child: const Text("Go to Category Page"),
            ),
          ],
        ),
      ),
    );
  }
}
