import 'package:flutter/material.dart';
import 'package:mascotas/ui/pages/authentication/login_page.dart';
import 'package:mascotas/ui/pages/authentication/register_page.dart';
import 'package:mascotas/ui/pages/authentication/welcome_page.dart';
import 'package:mascotas/ui/pages/content/client/home_page_client.dart';
import 'package:mascotas/ui/pages/content/medical/home_page_medical.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const WelcomePage(),
    'register': (BuildContext context) => RegisterPage(),
    'login': (BuildContext context) => LoginPage(),
    'cliente': (BuildContext context) => HomePageClient(),
    'medico':(BuildContext context) => HomePageMedical(),
  };
}
