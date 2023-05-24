import 'package:router_observer/helper/exports_helper.dart';

class Likes extends StatelessWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Likes"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Likes")
          ],
        ),
      ),
    );
  }
}
