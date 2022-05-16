import 'package:flutter/material.dart';
import 'package:mascotas/ui/widgets/widget_authentication.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: _cuerpo(context),
    );
  }

  Widget _cuerpo(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nombreApp(),
          const SizedBox(height: 20),
          logo(150.0),
          const SizedBox(height: 40),
          boton(context, 'Iniciar sesión', 'login'),
          const SizedBox(height: 10),
          boton(context, 'Registrarse', 'register'),
        ],
      ),
    );
  }
}
