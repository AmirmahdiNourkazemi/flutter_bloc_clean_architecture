import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/core/usecase/use_case.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/presentation/bloc/bookmark_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/presentation/bloc/save_country_status.dart';
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
  TextEditingController textEditingController = TextEditingController();
  bool visible = false;
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
        BlocConsumer<HomeBloc, HomeState>(buildWhen: (previous, current) {
          if (previous.countryStatus == current.countryStatus) {
            return false;
          } else {
            return true;
          }
        }, builder: (context, state) {
          if (state.countryStatus is CountryLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.countryStatus is CountryError) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<HomeBloc>(context).add(CountryEvent());
                },
                child: Text('retry'),
              ),
            );
          }
          if (state.countryStatus is CountryCompeleted) {
            final CountryCompeleted compeleted =
                state.countryStatus as CountryCompeleted;
            final List<CountriesModelEntity> model = compeleted.country;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(labelText: 'search'),
                    onEditingComplete: () {
                      BlocProvider.of<HomeBloc>(context)
                          .add(CountrySearchEvent(textEditingController.text));
                    },
                    onChanged: (value) {
                      if (value.isEmpty) {
                        setState(() {
                          visible = false;
                        });
                        BlocProvider.of<HomeBloc>(context).add(CountryEvent());
                      }
                    },
                  ),
                  ListView.builder(
                    controller: scrollController,
                    shrinkWrap: true,
                    itemCount: model.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          textEditingController.text =
                              model[index].name!.official.toString();
                          BlocProvider.of<HomeBloc>(context).add(
                              CountrySearchEvent(textEditingController.text));
                          setState(() {
                            visible = true;
                          });
                        },
                        leading: Image.network(
                          model[index].flags!.png!,
                          width: 30,
                        ),
                        title: Text(model[index].name!.common.toString()),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(model[index].name!.official.toString()),
                            if (visible &&
                                model[index].name!.nativeName != null) ...{
                              if (model[index].name!.nativeName!.eng !=
                                  null) ...{
                                Text(model[index]
                                    .name!
                                    .nativeName!
                                    .eng!
                                    .common
                                    .toString()),
                              },
                              Text(model[index].area.toString()),
                              // Text(),
                              Text(model[index].car!.side.toString())
                            }
                          ],
                        ),
                        trailing: visible
                            ? BlocListener<BookmarkBloc, BookmarkState>(
                                listener: (context, state) {
                                  if (state.saveCountryStatus
                                      is SaveCountrySuccess) {
                                    SaveCountrySuccess success =
                                        state.saveCountryStatus
                                            as SaveCountrySuccess;
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text('Country Saved'),
                                    ));
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        InsertCountry insertCountry =
                                            InsertCountry(
                                          model[index].name!.common.toString(),
                                          model[index].flags!.png.toString(),
                                          model[index].cca2.toString(),
                                        );
                                        BlocProvider.of<BookmarkBloc>(context)
                                            .add(SaveCountryEvent(
                                                insertCountry));
                                      },
                                      icon: Icon(Icons.check),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          BlocProvider.of<HomeBloc>(context)
                                              .add(CountryEvent());
                                          setState(() {
                                            textEditingController.clear();
                                            visible = false;
                                          });
                                        },
                                        icon: Icon(Icons.cancel))
                                  ],
                                ),
                              )
                            : null,
                      );
                    },
                  ),
                ],
              ),
            );
          }

          return Container();
        }, listener: (context, state) {
          if (state.countryStatus is CountryError) {
            CountryError error = state.countryStatus as CountryError;

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
