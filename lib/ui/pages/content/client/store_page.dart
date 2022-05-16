import 'package:flutter/material.dart';
import 'package:mascotas/ui/theme/text_styles.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 128, 222, 234),
      body: _cuerpo(),
    );
  }

  Widget _cuerpo() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 0.8,
      crossAxisCount: 2,
      children: <Widget>[
        _cardStore(
            "Mejor Sobres de Comida de Perro",
            'https://images-na.ssl-images-amazon.com/images/I/812PqI0PadL._AC_UL604_SR604,400_.jpg',
            "\$5.5"),
        _cardStore(
            "Alimentos para perros, Rocku, 1kg",
            'https://aratiendas.com/wp-content/uploads/2021/07/3060-7704269102651.jpg',
            "\$7.5"),
        _cardStore(
            "Casa natural de madera para hámster",
            'https://i.pinimg.com/originals/2c/ec/55/2cec551a9d15306e26afa71719b0a438.jpg',
            "\$100.5"),
        _cardStore(
            "Bola para hámster",
            'https://m.media-amazon.com/images/I/51zDFTSQoxS._AC_SX466_.jpg',
            "\$25.9"),
        _cardStore(
            "Gimnasio para gato",
            'https://m.media-amazon.com/images/I/71jsXht554L._AC_SX466_.jpg',
            "\$90.5"),
        _cardStore(
            "Casa para gato",
            'https://ovacen.com/wp-content/uploads/2019/09/accesorio-gatos.jpg',
            "\$750.5"),
        _cardStore(
            "Casa natural de madera para hámster",
            'https://i.pinimg.com/originals/2c/ec/55/2cec551a9d15306e26afa71719b0a438.jpg',
            "\$100.5"),
        _cardStore(
            "Bola para hámster",
            'https://m.media-amazon.com/images/I/51zDFTSQoxS._AC_SX466_.jpg',
            "\$25.9"),
        _cardStore(
            "Gimnasio para gato",
            'https://m.media-amazon.com/images/I/71jsXht554L._AC_SX466_.jpg',
            "\$90.5"),
      ],
    );
  }

  Widget _cardStore(text, link, price) {
    SizedBox separation = const SizedBox(height: 10);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.amber[200],
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppTextStyle.textTheme.headline5,
            textAlign: TextAlign.center,
          ),
          separation,
          Image(
            image: NetworkImage(link),
            height: 130,
            width: 110,
            fit: BoxFit.cover,
          ),
          separation,
          Text(
            price,
            style: AppTextStyle.textTheme.headline5,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
