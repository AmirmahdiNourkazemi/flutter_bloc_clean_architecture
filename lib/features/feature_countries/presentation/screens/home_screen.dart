import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/entities/countries_entity.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/country_status.dart';

import '../bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  ScrollController scrollController = ScrollController();
  void initState() {
    // TODO: implement initState

    super.initState();
    BlocProvider.of<HomeBloc>(context).add(CountryEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      controller: scrollController,
      scrollDirection: Axis.vertical,
      children: [
        BlocConsumer<HomeBloc, HomeState>(builder: (context, state) {
          if (state.countryStatus is CountryLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.countryStatus is CountryCompeleted) {
            final CountryCompeleted compeleted =
                state.countryStatus as CountryCompeleted;
            final List<CountriesModelEntity> model = compeleted.country;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                controller: scrollController,
                shrinkWrap: true,
                itemCount: model.length,
                itemBuilder: (context, index) {
                  return Card(
                    borderOnForeground: true,
                    key: Key(model[index].idd!.root.toString()),
                    child: Text(model[index].name!.common.toString()),
                    shape: RoundedRectangleBorder(),
                  );
                },
              ),
            );
          }

          return Container();
        }, listener: (context, state) {
          if (state.countryStatus is CountryError) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("error"),
              behavior: SnackBarBehavior.floating, // Add this line
            ));
          }
        })
      ],
    ));
  }
}
