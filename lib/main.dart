import 'package:aula01/pages/intro_page.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'blocs/global_bloc.dart';
import 'navigation/sailor_routes.dart';

void main() {
  SailorRoutes.createRoutes();
  runApp(BlocProvider(blocs: [Bloc((i) => GlobalBloc())], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capacitação em Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'montserrat',
      ),
      home: IntroPage(),
      navigatorKey: SailorRoutes.sailor.navigatorKey,
      onGenerateRoute: SailorRoutes.sailor.generator(),
    );
  }
}
