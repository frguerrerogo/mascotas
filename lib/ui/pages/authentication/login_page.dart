import 'package:flutter/material.dart';
import 'package:mascotas/ui/theme/text_styles.dart';
import 'package:mascotas/ui/widgets/widget_authentication.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final List<String> _tipoDocumento = [
    'Escoja una opción',
    'Medico',
    'Cliente',
    'Administrador',
  ];

  String _opcionSeleccionadaDocumento = 'Escoja una opción';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.cyan[200],
      body: _cuerpo(context),
    );
  }

  Widget _cuerpo(context) {
    SizedBox separation = const SizedBox(height: 20);
    return Center(
      child: ListView(
        
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logo(70.0),
              nombreApp(),
            ],
          ),
          separation,
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                correoAuthentication(),
                const SizedBox(height: 20),
                contrasenaAuthentication(),
                const SizedBox(height: 20),
                _crearTipoDeDocumento(),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.amber[200],
                borderRadius: BorderRadius.all(Radius.circular(25)),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                )),
          ),
          separation,
          boton(context, 'Iniciar sesión',
              _opcionSeleccionadaDocumento.toLowerCase()),
        ],
      ),
    );
  }

  Widget _crearTipoDeDocumento() {
    return DropdownButtonFormField(
      style: AppTextStyle.textTheme.headline3,
      decoration: InputDecoration(
        icon: const Icon(Icons.input_outlined),
        labelText: 'Rol',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
      value: _opcionSeleccionadaDocumento,
      onChanged: (String? newValue) {
        setState(
          () {
            _opcionSeleccionadaDocumento = newValue!;
          },
        );
      },
      items: getOpcionesDropdowm(),
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropdowm() {
    List<DropdownMenuItem<String>> lista = [];

    for (var tipoDocumento in _tipoDocumento) {
      lista.add(
        DropdownMenuItem(
          child: Text(tipoDocumento),
          value: tipoDocumento,
        ),
      );
    }
    return lista;
  }
}
