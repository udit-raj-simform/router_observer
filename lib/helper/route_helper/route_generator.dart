import 'package:router_observer/helper/exports_helper.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const Home(), settings: settings);
      case "/profile":
        return MaterialPageRoute(
            builder: (_) => const Profile(), settings: settings);
      case "/swipe":
        return MaterialPageRoute(
            builder: (_) => const Profile(), settings: settings);
      case "/category":
        return MaterialPageRoute(
            builder: (_) => const Category(), settings: settings);
      case "/like":
        return MaterialPageRoute(
            builder: (_) => const Likes(), settings: settings);
      case "/chat":
        return MaterialPageRoute(
            builder: (_) => const Chats(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => const Profile(), settings: settings);
    }
  }
}
