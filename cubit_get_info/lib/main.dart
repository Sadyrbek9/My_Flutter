import 'package:cubit_get_info/blocs/home%20cubit/home_cubit.dart';
import 'package:cubit_get_info/home_screen.dart';
import 'package:cubit_get_info/repositories/info_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(
            InfoRepository(),
          ),
        ),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
