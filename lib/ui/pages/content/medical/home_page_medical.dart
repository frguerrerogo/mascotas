import 'package:flutter/material.dart';
import 'package:mascotas/ui/pages/content/client/pets_page.dart';
import 'package:mascotas/ui/pages/content/medical/pets_client_page.dart';
import 'package:mascotas/ui/theme/text_styles.dart';
import 'package:mascotas/ui/widgets/widget_authentication.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePageMedical extends StatefulWidget {
  HomePageMedical({Key? key}) : super(key: key);

  @override
  State<HomePageMedical> createState() => _HomePageMedicalState();
}

class _HomePageMedicalState extends State<HomePageMedical> {
  int _selectedIndex = 0;

  final screens = [
    PetsClientPage(),
    PetsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: _cuerpoSuperior(),
      body: screens[_selectedIndex],
      bottomNavigationBar: _cuerpoInferior(),
    );
  }

  PreferredSizeWidget _cuerpoSuperior() {
    SizedBox separation = const SizedBox(height: 20, width: 20);
    return AppBar(
      backgroundColor: Color.fromARGB(255, 255, 224, 130),
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logo(40.0),
          separation,
          Text(
            'Mascotas',
            style: AppTextStyle.textTheme.headline4,
          ),
        ],
      ),
    );
  }

  Widget _cuerpoInferior() {
    return CurvedNavigationBar(
      backgroundColor: const Color.fromARGB(255, 128, 222, 234),
      height: 60.0,
      color: const Color.fromRGBO(255, 224, 130, 1),
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 800),
      index: _selectedIndex,
      onTap: (_selectedIndex) =>
          setState(() => this._selectedIndex = _selectedIndex),
      items: const <Widget>[
        Icon(Icons.home, size: 30, color: Colors.cyan),
        Icon(Icons.pets, size: 30, color: Colors.cyan),
      ],
    );
  }
}
