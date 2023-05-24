import 'package:router_observer/helper/exports_helper.dart';

class RouteManager {
  static final RouteObserver<ModalRoute<void>> modalRouteObserver =
      RouteObserver<ModalRoute<void>>();

  static final RouteObserver<PageRoute> pageRouteObserver =
  RouteObserver<PageRoute>();

}