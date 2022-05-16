import 'package:flutter/material.dart';
import 'package:mascotas/ui/theme/text_styles.dart';

Widget botonPet(context, titulo) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 255, 224, 130),
      visualDensity: VisualDensity.comfortable,
      elevation: 10,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      onPrimary: Colors.cyan,
      minimumSize: const Size(250, 45),
      maximumSize: const Size(250, 45),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    ),
    child: Text(
      titulo,
      style: AppTextStyle.textTheme.button,
    ),
    onPressed: () {},
  );
}

Widget nombrePet() {
  return TextField(
    textCapitalization: TextCapitalization.sentences,
    style: AppTextStyle.textTheme.headline3,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      hintText: 'Nombres de la mascota',
      labelText: 'Nombre',
      suffixIcon: const Icon(Icons.pets),
    ),
  );
}

Widget razaPet() {
  return TextField(
    textCapitalization: TextCapitalization.sentences,
    style: AppTextStyle.textTheme.headline3,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      hintText: 'Raza de la mascota',
      labelText: 'Raza',
      suffixIcon: const Icon(Icons.pets),
    ),
  );
}

Widget edadPets() {
  return TextField(
    style: AppTextStyle.textTheme.headline3,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
      hintText: 'Edad de la mascota',
      labelText: 'Edad',
      suffixIcon: const Icon(Icons.access_time),
    ),
  );
}
