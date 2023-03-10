import 'package:flutter/cupertino.dart';
import 'package:reewer_app/presentation/export.dart';

class AppRouter {
  static PageRouteBuilder<void> builder(Widget widget, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      transitionDuration: Duration(microseconds: 300),
      reverseTransitionDuration: Duration(microseconds: 300),
      pageBuilder: (
        _,
        __,
        ___,
      ) =>
          widget,
      transitionsBuilder: (_, anim, __, child) {
        return FadeTransition(
          opacity: anim,
          child: child,
        );
      },
    );
  }

  static PageRouteBuilder<void> splashBuilder(
    Widget widget,
    RouteSettings settings,
  ) {
    return PageRouteBuilder(
      settings: settings,
      transitionDuration: Duration(seconds: 1),
      reverseTransitionDuration: Duration(microseconds: 300),
      pageBuilder: (
        _,
        __,
        ___,
      ) =>
          widget,
      transitionsBuilder: (_, anim, __, child) {
        return FadeTransition(
          opacity: anim,
          child: child,
        );
      },
    );
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable, prefer_final_locals
    dynamic data = settings.arguments;
    switch (settings.name) {
      case LoginPage.routeName:
        {
          return builder(LoginPage(), settings);
        }
      case UnknownAccount.routeName:
        {
          return builder(UnknownAccount(), settings);
        }
      case ConfirmPhoneNumber.routeName:
        {
          return builder(ConfirmPhoneNumber(), settings);
        }
      case SignUpPage.routeName:
        {
          return builder(SignUpPage(), settings);
        }
      case TermsPage.routeName:
        {
          return builder(TermsPage(), settings);
        }
      case BottomBar.routeName:
        {
          return builder(
            BottomBar(
              initialIndex: data,
            ),
            settings,
          );
        }
      default:
        return builder(Container(), settings);
    }
  }
}
