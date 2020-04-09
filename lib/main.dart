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

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             RichText(
//               text: TextSpan(children: [
//                 TextSpan(
//                   text: 'Material Design',
//                   style: TextStyle(
//                       color: Colors.blue,
//                       decoration: TextDecoration.underline,
//                       fontSize: 40,
//                       fontFamily: 'montserrat',
//                       fontWeight: FontWeight.w400),
//                   recognizer: TapGestureRecognizer()
//                     ..onTap = () {
//                       launch(
//                           'https://flutter.dev/docs/development/ui/widgets/material');
//                     },
//                 )
//               ]),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
