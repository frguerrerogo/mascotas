import 'package:flutter/material.dart';
import 'package:mascotas/ui/theme/text_styles.dart';

class PetsProfilePage extends StatelessWidget {
  final petDetail;
  final String link;

  const PetsProfilePage({
    Key? key,
    required this.petDetail,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: _cuerpo(context),
    );
  }

  Widget _cuerpo(context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 40,
          left: 10,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.amber[200], size: 30)),
        ),
        Positioned(
          top: 70,
          left: 20,
          child: Text(petDetail[0], style: AppTextStyle.textTheme.headline1),
        ),
        Positioned(
          top: height * 0.14,
          right: -30,
          child: Image.asset(
            'lib/data/assets/mascotas.png',
            height: 200,
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: width,
            height: height * 0.6,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 224, 130),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  _petDetails(context, 'Nombre:', 0),
                  _petDetails(context, 'Tipo:', 1),
                  _petDetails(context, 'Raza:', 2),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: (height * 0.24),
          left: (width / 2) - 56,
          child: CircleAvatar(
            radius: 90,
            backgroundImage: Image(image: AssetImage(link)).image,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: IconButton(
              onPressed: () {
                _showSelectionDialog(context, "¿Quiere elminar esta mascota?");
              },
              icon: Icon(Icons.delete, color: Colors.red, size: 30)),
        ),
        Positioned(
          bottom: 10,
          right: 40,
          child: IconButton(
              onPressed: () {
                _showSelectionDialog(context, "¿Quiere editar esta mascota?");
              },
              icon: Icon(Icons.edit_note, color: Colors.green[700], size: 30)),
        ),
      ],
    );
  }

  Widget _petDetails(context, text, i) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width * 0.4,
            child: Text(
              text,
              style: AppTextStyle.textTheme.headline4,
            ),
          ),
          Container(
            width: width * 0.4,
            child: Text(
              petDetail[i],
              style: AppTextStyle.textTheme.headline4,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showSelectionDialog(BuildContext context, text) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.cyan[200],
            elevation: 30.0,
            title: Text(
              text,
              style: AppTextStyle.textTheme.headline3,
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: const Text("Aceptar"),
                    onTap: () {},
                  ),
                  const Padding(padding: EdgeInsets.all(8.0)),
                  GestureDetector(
                    child: const Text("Cancelar"),
                    onTap: () {},
                  )
                ],
              ),
            ));
      },
    );
  }
}
