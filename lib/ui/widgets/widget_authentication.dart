import 'package:flutter/material.dart';
import 'package:mascotas/ui/theme/text_styles.dart';

Widget nombreApp() {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: Text(
      "Mascotas",
      style: AppTextStyle.textTheme.headline1,
    ),
  );
}

Widget nombreApp2() {
  return Text(
    "Mascotas",
    style: AppTextStyle.textTheme.headline1,
  );
}

Widget logo(size) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    height: size,
    width: size,
    child: Image.asset('lib/data/assets/mascotas.png'),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(75.0),
      color: Color.fromARGB(255, 255, 224, 130),
      boxShadow: const <BoxShadow>[
        BoxShadow(
            color: Colors.white70,
            blurRadius: 10.0,
            spreadRadius: 0.5,
            offset: Offset(2.0, 2.0))
      ],
    ),
  );
}

Widget boton(context, titulo, page) {
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
    onPressed: () {
      Navigator.pushNamed(context, page);
    },
  );
}

Widget correoAuthentication() {
  return TextField(
    style: AppTextStyle.textTheme.headline3,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
      hintText: 'Correo',
      labelText: 'Correo',
      suffixIcon: const Icon(Icons.alternate_email),
      icon: const Icon(Icons.email),
    ),
  );
}

Widget contrasenaAuthentication() {
  return TextField(
    key: const Key("signInPassword"),
    obscureText: true,
    obscuringCharacter: "*",
    //autofocus: true,
    textCapitalization: TextCapitalization.sentences,
    style: AppTextStyle.textTheme.headline3,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
      labelText: 'Contraseña',
      icon: const Icon(Icons.password),
      hintText: 'Contraseña',
      //filled: true,
      suffixIcon: const Icon(Icons.password_sharp),
    ),
  );
}

Widget nombreAuthentication() {
  return TextField(
    textCapitalization: TextCapitalization.sentences,
    style: AppTextStyle.textTheme.headline3,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      hintText: 'Nombres de la persona',
      labelText: 'Nombres',
      suffixIcon: const Icon(Icons.accessibility),
      icon: const Icon(Icons.account_circle),
    ),
  );
}

Widget apellidoAuthentication() {
  return TextField(
    textCapitalization: TextCapitalization.sentences,
    style: AppTextStyle.textTheme.headline3,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      hintText: 'Apellido de la persona',
      labelText: 'Apellidos',
      suffixIcon: const Icon(Icons.settings_accessibility_rounded),
      icon: const Icon(
        Icons.account_circle,
      ),
    ),
  );
}

Widget celularAuthentication() {
  return TextField(
    style: AppTextStyle.textTheme.headline3,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      hintText: 'Celular',
      labelText: 'Celular',
      suffixIcon: const Icon(Icons.phone_callback_outlined),
      icon: const Icon(Icons.phone_android),
    ),
  );
}

