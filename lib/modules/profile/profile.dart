import 'package:router_observer/helper/exports_helper.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
