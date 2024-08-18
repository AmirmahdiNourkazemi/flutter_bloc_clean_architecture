import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/home_bloc.dart';
import 'package:flutter_bloc_clean_architecture/locator/locator.dart';

import 'core/main_wrapper.dart';

void main() async {
  await setup();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => locator<HomeBloc>(),
          ),
          // BlocProvider(
          //   create: (context) => SubjectBloc(),
          // ),
        ],
        child: const MainWrapper(),
      ),
    ),
  );
}
