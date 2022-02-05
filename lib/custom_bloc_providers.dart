import 'package:bloc_state/app/routes/app.routes.dart';
import 'package:bloc_state/domain/cubit/theme_cubit.dart';
import 'package:bloc_state/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Core extends StatelessWidget {
  const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ThemeCubit>(create: (context) => ThemeCubit())
        ],
        child: MyApp(
          routes: AppRoutes(),
        ));
  }
}
