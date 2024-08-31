import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/domain/entities/country_entity.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/presentation/bloc/bookmark_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_bookmark/presentation/bloc/get_country_by_name_status.dart';

import '../bloc/get_country_status.dart';

class BookMarkScreen extends StatefulWidget {
  const BookMarkScreen({super.key});

  @override
  State<BookMarkScreen> createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<BookmarkBloc>(context).add(GetAllCountryEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          TextField(
            controller: textEditingController,
            onChanged: (value) {
              if (value.isNotEmpty) {
                BlocProvider.of<BookmarkBloc>(context)
                    .add(GetCountryByNameEvent(value));
                print(value);
              } else {
                print("empty");
                BlocProvider.of<BookmarkBloc>(context)
                    .add(GetAllCountryEvent());
              }
            },
            decoration: const InputDecoration(
                labelText: 'Search', border: OutlineInputBorder()),
            textInputAction: TextInputAction.search,
          ),
          BlocConsumer<BookmarkBloc, BookmarkState>(
            listener: (context, state) {},
            builder: (context, state) {
              // Handle Loading State
              if (state.getCountryByNameStatus is GetCountryByNameLoading ||
                  state.getCountryStatus is GetCountryLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              // Handle GetCountryByNameSuccess State
              if (state.getCountryByNameStatus is GetCountryByNameSuccess) {
                final GetCountryByNameSuccess success =
                    state.getCountryByNameStatus as GetCountryByNameSuccess;
                Country? data = success.country;

                if (data != null) {
                  return ListTile(
                    leading: Image.network(
                      data.flag,
                      width: 30,
                    ),
                    title: Text(data.name),
                    subtitle: Text(data.code),
                  );
                }
              }

              // Handle GetCountrySuccess State
              if (state.getCountryStatus is GetCountrySuccess) {
                final GetCountrySuccess success =
                    state.getCountryStatus as GetCountrySuccess;
                List<Country> data = success.country;

                return ListView.builder(
                  itemCount: data.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(
                        data[index].flag,
                        width: 30,
                      ),
                      title: Text(data[index].name),
                      subtitle: Text(data[index].code),
                    );
                  },
                );
              }

              return Container();
            },
          ),
        ],
      ),
    );
  }
}