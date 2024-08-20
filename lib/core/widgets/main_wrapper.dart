import 'package:animated_botton_navigation/animated_botton_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/country_status.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/bloc/home_bloc.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/screens/home_screen.dart';
import 'package:flutter_bloc_clean_architecture/features/feature_countries/presentation/screens/search_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    // Container(
    //   child: Center(child: const Text('text')),
    // ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Countries'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: AnimatedBottomNavigation(
        height: 70,
        indicatorSpaceBotton: 25,
        icons: [
          Icons.home,
          Icons.search,
          Icons.person,
        ],
        currentIndex: _currentIndex,
        onTapChange: (index) {
          setState(() {
            print(_currentIndex);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
