import 'package:bloc_state/app/routes/app.routes.dart';
import 'package:bloc_state/custom_bloc_providers.dart';
import 'package:bloc_state/domain/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Core());
}

class MyApp extends StatelessWidget {
  const MyApp({required this.routes});
  final AppRoutes routes;

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    bool isDark = themeCubit.isDark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      initialRoute: "/home",
      onGenerateRoute: routes.generateRoute,
    );
  }
}
