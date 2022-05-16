import 'package:flutter/material.dart';
import 'package:mascotas/ui/theme/text_styles.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 128, 222, 234),
      body: _cuerpo(),
    );
  }

  Widget _cuerpo() {
    SizedBox separation = const SizedBox(height: 10);
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      children: [
        _card('Datos curiosos de los perros',
            'La nariz de los perros puede llegar a tener hasta 300 millones de receptores olfativos. Las papilas gustativas de los perros varían de 1,700 a 2,000 versus las casi 10,000 papilas gustativas que tenemos los humanos. La inteligencia de los canes es similar a la de un niño de 2 años.'),
        separation,
        _cardImagen('https://pbs.twimg.com/media/FDc4elYWUAYPH7t.jpg',
            'Datos curiosos de los gatos'),
        separation,
        _cardImagen(
            'https://i.pinimg.com/originals/3a/2f/10/3a2f108866b8ab0925709bfecdd62b65.jpg',
            'Datos curiosos de los peces payaso'),
        separation,
        _card('Datos curiosos de los Hamster',
            '- Existen muchas especies de hámsteres\n- Los hámsteres son muy propensos a padecer estrés\n- Tienen una esperanza de vida muy corta\n- Las hembras pueden comerse a las crías que consideran débiles\n- Sus dientes jamás dejan de crecer\n- A los hámsteres les gusta una dieta variada\n- Son animales crepusculares\n- Adoran explorar\n- Son muy inteligentes'),
        separation,
        _cardImagen('https://pbs.twimg.com/media/FDc4elYWUAYPH7t.jpg',
            'Datos curiosos de los gatos'),
        separation,
        _card('Datos curiosos de los perros',
            'La nariz de los perros puede llegar a tener hasta 300 millones de receptores olfativos. Las papilas gustativas de los perros varían de 1,700 a 2,000 versus las casi 10,000 papilas gustativas que tenemos los humanos. La inteligencia de los canes es similar a la de un niño de 2 años.'),
      ],
    );
  }

  Widget _card(titulo, text) {
    return Card(
      color: Colors.amber[200],
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(titulo,
                style: AppTextStyle.textTheme.headline3,
                textAlign: TextAlign.center),
            subtitle: Text(text,
                style: AppTextStyle.textTheme.headline5,
                textAlign: TextAlign.justify),
          ),
        ],
      ),
    );
  }

  Widget _cardImagen(link, text) {
    return Container(
      child: ClipRRect(
        child: Container(
          child: Column(
            children: <Widget>[
              Image(
                image: NetworkImage(link),
                height: 350.0,
                width: 400,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(text,
                    style: AppTextStyle.textTheme.headline5,
                    textAlign: TextAlign.center),
              )
            ],
          ),
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.amber[200],
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0))
        ],
      ),
    );
  }
}
