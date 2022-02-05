import 'package:bloc_state/domain/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: false);
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              if (state is ThemeDark) {
                return Text("Tema Gelap");
              }
              if (state is ThemeLight) {
                return Text("Tema Cerah");
              }
              return Text("");
            },
          ),
        ),
        body: BlocListener<ThemeCubit, ThemeState>(
          listener: (context, state) {
            if (state is ThemeDark) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message),
                duration: Duration(milliseconds: 500),
              ));
            }
            if (state is ThemeLight) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message),
                duration: Duration(milliseconds: 500),
              ));
            }
          },
          child: Container(
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    themeCubit.toggleTheme();
                  },
                  child: Text('Tema')),
            ),
          ),
        ));
  }
}
