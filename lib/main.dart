import 'package:flutter/material.dart';
import 'package:moic_profile/pages/choose_location.dart';
import 'package:moic_profile/pages/home.dart';
import 'package:moic_profile/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: "/home",
  routes: {
    "/home" : (context) => Home(),
    "/loading" : (context) => Loading(),
    "/choose_location" : (context) => ChooseLocation(),
  },
));