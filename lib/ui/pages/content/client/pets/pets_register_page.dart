import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mascotas/ui/theme/text_styles.dart';
import 'package:mascotas/ui/widgets/widget_authentication.dart';
import 'package:mascotas/ui/widgets/widget_pets.dart';

class PetsRegisterPage extends StatefulWidget {
  PetsRegisterPage({Key? key}) : super(key: key);

  @override
  State<PetsRegisterPage> createState() => _PetsRegisterPageState();
}

class _PetsRegisterPageState extends State<PetsRegisterPage> {
  var _imageFile;
  final ImagePicker _picker = ImagePicker();

  final List<String> _tipoDocumento = [
    'Escoja una opción',
    'Gato',
    'Perro',
    'Pez',
    'Hamster',
  ];

  String _opcionSeleccionadaDocumento = 'Escoja una opción';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _cuerpoSuperior(),
      backgroundColor: Colors.cyan[200],
      body: _cuerpo(context),
    );
  }

  PreferredSizeWidget _cuerpoSuperior() {
    SizedBox separation = const SizedBox(height: 20, width: 20);
    return AppBar(
      backgroundColor: Color.fromARGB(255, 255, 224, 130),
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

  Widget _cuerpo(context) {
    SizedBox separation = const SizedBox(height: 20);
    return Center(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          Center(child: nombrePage()),
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                nombrePet(),
                separation,
                tipoPets(),
                separation,
                razaPet(),
                separation,
                edadPets(),
                separation,
                _colocarImagenPet(),
                separation,
                _botonFotoPet()
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
          botonPet(context, 'Registrar mascota'),
        ],
      ),
    );
  }

  Widget nombrePage() {
    return Container(
      //padding: const EdgeInsets.all(10.0),
      child: Text(
        "Registrar mascota",
        style: AppTextStyle.textTheme.headline2,
      ),
    );
  }

  Widget tipoPets() {
    return DropdownButtonFormField(
      style: AppTextStyle.textTheme.headline3,
      decoration: InputDecoration(
        labelText: 'Tipo animal',
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

  Widget _botonFotoPet() {
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

  Widget _colocarImagenPet() {
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
