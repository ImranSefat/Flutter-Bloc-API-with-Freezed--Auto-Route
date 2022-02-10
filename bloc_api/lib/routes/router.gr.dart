// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: DetailsPage(key: args.key, dataModel: args.dataModel));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(DetailsRoute.name, path: '/details-page')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [DetailsPage]
class DetailsRoute extends PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({Key? key, required DataModel dataModel})
      : super(DetailsRoute.name,
            path: '/details-page',
            args: DetailsRouteArgs(key: key, dataModel: dataModel));

  static const String name = 'DetailsRoute';
}

class DetailsRouteArgs {
  const DetailsRouteArgs({this.key, required this.dataModel});

  final Key? key;

  final DataModel dataModel;

  @override
  String toString() {
    return 'DetailsRouteArgs{key: $key, dataModel: $dataModel}';
  }
}
