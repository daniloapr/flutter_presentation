import 'package:aula01/pages/adopters_page.dart';
import 'package:aula01/pages/all_about_widgets_page.dart';
import 'package:aula01/pages/challenge_page.dart';
import 'package:aula01/pages/challenge_title_page.dart';
import 'package:aula01/pages/content_page.dart';
import 'package:aula01/pages/counter_page.dart';
import 'package:aula01/pages/dart_page.dart';
import 'package:aula01/pages/dart_title_page.dart';
import 'package:aula01/pages/finish_page.dart';
import 'package:aula01/pages/intro_page.dart';
import 'package:aula01/pages/lets_code_page.dart';
import 'package:aula01/pages/productivity_page.dart';
import 'package:aula01/pages/what_is_flutter_page.dart';
import 'package:aula01/pages/what_is_flutter_title_page.dart';
import 'package:aula01/pages/why_flutter_conclusion_page.dart';
import 'package:aula01/pages/why_flutter_page.dart';
import 'package:aula01/pages/why_not_flutter_page.dart';
import 'package:sailor/sailor.dart';

class SailorRoutes {
  static final sailor = Sailor(
    options: SailorOptions(
      defaultTransitions: [
        SailorTransition.slide_from_right,
        SailorTransition.slide_from_left
      ],
    ),
  );

  static String getRoute(PageEnum page) => '/${page.toString()}';

  static void createRoutes() {
    sailor.addRoutes([
      SailorRoute(
        name: getRoute(PageEnum.intro),
        builder: (context, args, params) {
          return IntroPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.allAboutWidgets),
        builder: (context, args, params) {
          return AllAboutWidgetsPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.content),
        builder: (context, args, params) {
          return ContentPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.dart),
        builder: (context, args, params) {
          return DartPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.dartTitle),
        builder: (context, args, params) {
          return DartTitlePage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.whatIsFlutterTitle),
        builder: (context, args, params) {
          return WhatIsFlutterTitlePage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.whatIsFlutter),
        builder: (context, args, params) {
          return WhatIsFlutterPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.whyFlutter),
        builder: (context, args, params) {
          return WhyFlutterPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.whyFlutterConclusion),
        builder: (context, args, params) {
          return WhyFlutterConclusionPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.productivity),
        builder: (context, args, params) {
          return ProductivityPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.whyNotFlutter),
        builder: (context, args, params) {
          return WhyNotFlutterPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.adopters),
        builder: (context, args, params) {
          return AdoptersPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.letsCode),
        builder: (context, args, params) {
          return LetsCodePage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.challengeTitle),
        builder: (context, args, params) {
          return ChallengeTitlePage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.challenge),
        builder: (context, args, params) {
          return ChallengePage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.counter),
        builder: (context, args, params) {
          return CounterPage();
        },
      ),
      SailorRoute(
        name: getRoute(PageEnum.finish),
        builder: (context, args, params) {
          return FinishPage();
        },
      ),
    ]);
  }

  static void navigate({PageEnum page}) {
    sailor.navigate(getRoute(page));
  }

  static void pop() {
    sailor.pop();
  }
}

///Defines the order of the pages for navigation
enum PageEnum {
  intro,
  content,
  whatIsFlutterTitle,
  whatIsFlutter,
  allAboutWidgets,
  dartTitle,
  dart,
  whyFlutter,
  whyFlutterConclusion,
  productivity,
  whyNotFlutter,
  adopters,
  letsCode,
  counter,
  challengeTitle,
  challenge,
  finish,
}
