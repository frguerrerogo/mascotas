import 'package:flutter/material.dart';
import 'package:mascotas/ui/pages/content/client/pets/pets_profile_page.dart';
import 'package:mascotas/ui/pages/content/client/pets/pets_register_page.dart';

import 'package:mascotas/ui/theme/text_styles.dart';

class PetsPage extends StatelessWidget {
  const PetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 128, 222, 234),
      body: _cuerpo(context),
      floatingActionButton: FloatingActionButton.extended(
        hoverColor: Color.fromARGB(255, 128, 222, 234),
        foregroundColor: Colors.cyan,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PetsRegisterPage()));
        },
        icon: const Icon(Icons.add),
        label:
            Text('Registrar mascota', style: AppTextStyle.textTheme.headline5),
      ),
    );
  }

  Widget _cuerpo(context) {
    return ListView(
      children: [
        _mascotas(
            context, 'Luhna', 'Perro', 'Labrador', 'lib/data/assets/perro.jpg'),
        _mascotas(
            context, 'Uva', 'Gato', 'Bengala', 'lib/data/assets/gato.jpg'),
        _mascotas(
            context, 'Tiburoncin', 'Pez', 'Dorado', 'lib/data/assets/pez.jpeg'),
        _mascotas(context, 'Kira', 'Hamster', 'Roboros',
            'lib/data/assets/hamster.jpg'),
        _mascotas(
            context, 'Luhna', 'Perro', 'Labrador', 'lib/data/assets/perro.jpg'),
        _mascotas(
            context, 'Uva', 'Gato', 'Bengala', 'lib/data/assets/gato.jpg'),
        _mascotas(
            context, 'Tiburoncin', 'Pez', 'Dorado', 'lib/data/assets/pez.jpeg'),
        _mascotas(context, 'Kira', 'Hamster', 'Roboros',
            'lib/data/assets/hamster.jpg'),
      ],
    );
  }

  Widget _mascotas(context, nombre, tipoAnimal, raza, link) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 370,
        height: 100,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PetsProfilePage(
                          petDetail: [nombre, tipoAnimal, raza],
                          link: link,
                        )));
          },
          child: Card(
            color: Color.fromARGB(255, 255, 224, 130),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 10,
                  child: Container(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: Image(image: AssetImage(link)).image,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75.0),
                      color: Colors.amber,
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                            color: Colors.white70,
                            blurRadius: 10.0,
                            spreadRadius: 0.5,
                            offset: Offset(2.0, 2.0))
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 100,
                  child: Text(nombre, style: AppTextStyle.textTheme.headline4),
                ),
                Positioned(
                  bottom: -25,
                  right: -15,
                  child: Image.asset(
                    'lib/data/assets/mascotas.png',
                    height: 150,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
