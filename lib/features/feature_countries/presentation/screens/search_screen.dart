import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/domain/entities/countries_entity.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/country_status.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/home_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/search_status.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ScrollController scrollController = ScrollController();
  TextEditingController textEditingController = TextEditingController();
  @override

  Widget build(BuildContext context) {
    
    return SafeArea(
        child: ListView(
      children: [
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(labelText: 'search',border: OutlineInputBorder()),
          textInputAction: TextInputAction.search,
          

          onEditingComplete: () {
            BlocProvider.of<HomeBloc>(context)
                .add(CountrySearchHomeEvent(textEditingController.text));
          },
          // onChanged: (value) {
          //   if (value.isEmpty) {
          //     BlocProvider.of<HomeBloc>(context).add(CountryEvent());
          //   }
          // },
        ),
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
