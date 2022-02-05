import 'package:bloc_state/domain/cubit/theme_cubit.dart';
import 'package:bloc_state/presentaton/views/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  late ThemeCubit themeCubit;

  AppRoutes() {
    themeCubit = ThemeCubit();
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        {
          return MaterialPageRoute(builder: (context) => HomeView());
        }
    }
  }
}
