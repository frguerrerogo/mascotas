import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mascotas/ui/theme/text_styles.dart';
import 'package:mascotas/ui/widgets/widget_authentication.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _fecha = "";
  var _imageFile;
  final ImagePicker _picker = ImagePicker();
  final TextEditingController _inputFieldDateController =
      TextEditingController();
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
                nombreAuthentication(),
                separation,
                apellidoAuthentication(),
                separation,
                correoAuthentication(),
                separation,
                contrasenaAuthentication(),
                separation,
                celularAuthentication(),
                separation,
                _fechaAuthentication(context),
                separation,
                _colocarImagenAuthentication(),
                separation,
                _botonFotoAuthentication()
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
          boton(context, 'Iniciar sesión', 'cliente'),
        ],
      ),
    );
  }

  Widget _fechaAuthentication(BuildContext context) {
    return TextField(
      style: AppTextStyle.textTheme.headline3,
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: const Icon(Icons.hourglass_top_sharp),
        icon: const Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1910),
        lastDate: DateTime.now(),
        locale: const Locale('es', 'ES'));
    if (picked != null) {
      setState(() {
        _fecha = picked.toString().split(' ')[0];
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  Widget _botonFotoAuthentication() {
    return FloatingActionButton(
      onPressed: () {
        _showSelectionDialog(context);
      },
      child: const Icon(Icons.camera_alt),
      backgroundColor: Colors.cyan[200],
    );
  }

  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Colors.cyan[200],
              elevation: 30.0,
              title: Text(
                "¿Desde dónde quieres tomar la foto? ",
                style: AppTextStyle.textTheme.headline3,
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                      child: const Text("Galeria"),
                      onTap: () {
                        _openGallery(context);
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(8.0)),
                    GestureDetector(
                      child: const Text("Camara"),
                      onTap: () {
                        _openCamera(context);
                      },
                    )
                  ],
                ),
              ));
        });
  }

  void _openGallery(BuildContext context) async {
    var picture = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  void _openCamera(BuildContext context) async {
    var picture = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  Widget _colocarImagenAuthentication() {
    if (_imageFile != null) {
      return Image.file(File(_imageFile.path), width: 350, height: 350);
    } else {
      return Center(
        child: Text(
          "Por favor selecione una imagen",
          style: AppTextStyle.textTheme.headline3,
        ),
      );
    }
  }
}
