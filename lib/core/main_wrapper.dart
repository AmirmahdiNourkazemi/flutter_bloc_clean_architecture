import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/country_status.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/home_bloc.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(CountryEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
           if (state.countryStatus is CountryLoading) {
             return const Center(
               child: CircularProgressIndicator(),
             );
           }   if (state.countryStatus is CountryCompeleted) {
             return const Center(
               child:Text('compeleted'),
             );
           }   if (state.countryStatus is CountryError) {
             return const Center(
               child: Text('error'),
             );
           }
           return Container();
          },
        ),
      ),
    );
  }
}
