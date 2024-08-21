import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/entities/countries_entity.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/use_cases/get_search_country_usecases.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/country_status.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/home_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/search_status.dart';
import 'package:flutter_bloc_clean_architecture/locator/locator.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ScrollController scrollController = ScrollController();
  TextEditingController textEditingController = TextEditingController();
  bool visible = false;
  bool loading = false;
  DataState<List<CountriesModelEntity>>? model;
  @override
  Widget build(BuildContext context) {
    final GetSearchCountriesUseCases getSearchCountriesUseCases =
        GetSearchCountriesUseCases(locator());

    return SafeArea(
        child: ListView(
      children: [
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(
              labelText: 'search', border: OutlineInputBorder()),
          textInputAction: TextInputAction.search,

          // onEditingComplete: () {
          //   BlocProvider.of<HomeBloc>(context)
          //       .add(CountrySearchHomeEvent(textEditingController.text));
          // },
          onChanged: (value) async {
            setState(() {
              loading = true;
            });
            model = await getSearchCountriesUseCases.countryRepository
                .getSearchNameCountries(textEditingController.text);

            if (value.isEmpty) {
              setState(() {
                loading = true;
                visible = false;
              });
            }
            if (model != []) {
              setState(() {
                loading = false;
                visible = true;
              });
            }
          },
        ),
        if (visible == true) ...{
          if (loading == true) ...{CircularProgressIndicator()},
          if (model!.data != null) ...{
            ListView.builder(
              itemCount: model!.data!.length,
              itemBuilder: (context, index) {
                print(loading);
                // print(model!.data![index].name!.common);

                return ListTile(
                  title: Text(model!.data![index].name!.common.toString()),
                );
              },
              shrinkWrap: true,
            )
          },
        },
        BlocConsumer<HomeBloc, HomeState>(builder: (context, state) {
          if (state.searchStatus is SearchLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.searchStatus is SearchCompeleted) {
            final SearchCompeleted compeleted =
                state.searchStatus as SearchCompeleted;
            final List<CountriesModelEntity> model = compeleted.country;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListView.builder(
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
                ],
              ),
            );
          }

          return Container();
        }, listener: (context, state) {
          if (state.searchStatus is SearchError) {
            SearchError error = state.searchStatus as SearchError;

            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(error.message),
              behavior: SnackBarBehavior.floating, // Add this line
            ));
          }
        })
      ],
    ));
  }
}
