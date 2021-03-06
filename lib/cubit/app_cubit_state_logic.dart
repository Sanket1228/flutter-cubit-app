import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_state.dart';
import 'package:flutter_cubit/cubit/app_cubits.dart';
import 'package:flutter_cubit/pages/details_page.dart';
import 'package:flutter_cubit/pages/home_page.dart';
import 'package:flutter_cubit/pages/navs/main_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';

class AppCubitStateLogic extends StatefulWidget {
  const AppCubitStateLogic({Key? key}) : super(key: key);

  @override
  _AppCubitStateLogicState createState() => _AppCubitStateLogicState();
}

class _AppCubitStateLogicState extends State<AppCubitStateLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is WelcomeState) {
          return WelcomePage();
        }
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is DetailState) {
          return DetailPage();
        }
        if (state is LoadedState) {
          return HomePage();
        } else {
          return Container();
        }
      }),
    );
  }
}
