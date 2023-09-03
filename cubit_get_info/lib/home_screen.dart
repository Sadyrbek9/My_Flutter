import 'package:cubit_get_info/blocs/home%20cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: 350,
          child: BlocBuilder<HomeCubit, HomeCubitState>(
            builder: (context, state) {
              return state.maybeMap(
                init: (initState) {
                  return ListView.builder(
                      itemCount: initState.productItems.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(initState.productItems[index] ?? ''),
                        );
                      });
                },
                orElse: () => const SizedBox(),
              );
            },
          ),
        ),
      ]),
    );
  }
}
