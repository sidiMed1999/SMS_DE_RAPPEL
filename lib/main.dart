import 'package:flutter/material.dart';
import 'package:my_app/Auth/login.dart';
import 'package:my_app/Auth/signup.dart';
import 'package:my_app/Home/Admin.dart';
import 'package:my_app/Home/Ajouter_Pers_Sante.dart';
import 'package:my_app/Home/Ajouter_Post.dart';
import 'package:my_app/Home/Detaille_Personnel_Sante.dart';
import 'package:my_app/Home/Detaille_Post.dart';
import 'package:my_app/Home/List_Personnel_Sante.dart';
import 'package:my_app/Home/List_Post.dart';
import 'package:my_app/Home/Logout.dart';
import 'package:my_app/Home/SMS_Personnel_Sante.dart';
import 'package:my_app/Home/femmes_enceintes.dart';
import 'package:my_app/Home/homepage_add_femme.dart';

import 'package:my_app/Home/Detaillant.dart';

import 'package:my_app/Auth/test.dart';

// @dart=2.9

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
      routes: {
        'Admin': (context) => Admin(),
        'AjouterPerSante': (context) => AjouterPerSante(),
        'PersonnelSante': (context) => PersonnelSante(),
        'DetailPersSante': (context) => DetailPersSante(Medecies: {}),
        'AjouterPost': (context) => AjouterPost(),
        'ListePost': (context) => ListePost(),
        'LogoutScreen': (context) => LogoutScreen(),
        'DetailPost': (context) => DetailPost(
              Postes: {},
            ),
        // 'test': (context) => JoliFormulaire(),LogoutScreen,
        'login': (context) => Login(),
        'signup': (context) => SignUp(),
        'homepage': (context) => HomePage(),
        'SmsMedecine': (context) => SmsMedecine(),
        'Femme': (context) => FemmeEnceinte(),
        'FemmeDetails': (context) => FemmeDetails(
              femme: {},
            ),
      },
    );
  }
}
