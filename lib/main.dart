import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_v1/constants.dart';
import 'package:project_v1/screens/Games/memory.dart';
import 'package:project_v1/screens/Games/startup.dart';
import 'package:project_v1/screens/animals_screen.dart';
import 'package:project_v1/screens/body_parts.dart';
import 'package:project_v1/screens/colors_screen.dart';
import 'package:project_v1/screens/days_screen.dart';
import 'package:project_v1/screens/family_screen.dart';
import 'package:project_v1/screens/months_screen.dart';
import 'package:project_v1/screens/shapes.dart';
import 'package:project_v1/screens/splash_screen.dart';
import 'package:project_v1/screens/main_screen.dart';
import 'package:project_v1/screens/nums_screen.dart';
import 'package:project_v1/screens/letters_screen.dart';
import 'package:project_v1/screens/Games/color_match.dart';
import 'package:project_v1/screens/games_screen.dart';
import 'package:project_v1/screens/fruits_screen.dart';
import 'package:project_v1/screens/vegetables_screen.dart';
import 'package:provider/provider.dart';

import 'generalNotifier.dart';
import 'models/weekday_model.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersive,
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GeneralNotifier()),
      ],
      child: MaterialApp(
        title: 'Little Minds',
        theme: ThemeData(scaffoldBackgroundColor: AppColors.backGround),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/Main': (context) => MainScreen(),
          '/Nums': (context) => NumsScreen(),
          '/Animals': (context) => AnimalScreen(),
          '/Letters': (context) => LettersScreen(),
          '/Family': (context) => FamilyScreen(),
          '/Colors':(context) => ColorsScreen(),
          '/Months':(context) => MonthsScreen(),
          '/Days':(context) => WeekdaysScreen(),
          '/Games': (context) => GameScreen(),
          '/Color': (context) => ColorMatch(),
          '/Memory': (context) => Memory(),
          '/Fruits': (context) => Fruits(),
          '/Vegetables': (context) => Vegetables(),
          '/StartupPage': (context) => StartupPage(),
          '/BodyParts': (context) => BodyPartsScreen(),
          '/Shapes':(context)=>ShapesScreen(),
        },
      ),
    );
  }
}

