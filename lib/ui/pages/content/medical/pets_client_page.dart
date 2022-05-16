import 'package:flutter/material.dart';
import 'package:mascotas/ui/theme/text_styles.dart';

class PetsClientPage extends StatelessWidget {
  const PetsClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: _cuerpo(context),
    );
  }

  Widget _cuerpo(context) {
    return ListView(
      children: [
        _medicos(context, 'Carlos D', 'Cirujano',
            'https://d2lcsjo4hzzyvz.cloudfront.net/blog/wp-content/uploads/2020/10/07114553/me%CC%81dicos-influencers-en-Instagram.jpg'),
        _medicos(context, 'Maria G', 'Cirujano',
            'https://d7lju56vlbdri.cloudfront.net/var/ezwebin_site/storage/images/_aliases/img_1col/noticias/solo-el-8-de-las-medicas-alcanza-puestos-de-responsabilidad-en-hospitales/3405721-5-esl-MX/Solo-el-8-de-las-medicas-alcanza-puestos-de-responsabilidad-en-hospitales.jpg'),
        _medicos(context, 'Susana M', 'Cirujano',
            'https://www.soyvida.com/__export/1589325312150/sites/debate/img/2020/05/12/doctor_crop1589325143700.jpg_976912859.jpg'),
        _medicos(context, 'Carlos D', 'Cirujano',
            'https://d2lcsjo4hzzyvz.cloudfront.net/blog/wp-content/uploads/2020/10/07114553/me%CC%81dicos-influencers-en-Instagram.jpg'),
        _medicos(context, 'Maria G', 'Cirujano',
            'https://d7lju56vlbdri.cloudfront.net/var/ezwebin_site/storage/images/_aliases/img_1col/noticias/solo-el-8-de-las-medicas-alcanza-puestos-de-responsabilidad-en-hospitales/3405721-5-esl-MX/Solo-el-8-de-las-medicas-alcanza-puestos-de-responsabilidad-en-hospitales.jpg'),
        _medicos(context, 'Susana M', 'Cirujano',
            'https://www.soyvida.com/__export/1589325312150/sites/debate/img/2020/05/12/doctor_crop1589325143700.jpg_976912859.jpg'),
        _medicos(context, 'Carlos D', 'Cirujano',
            'https://d2lcsjo4hzzyvz.cloudfront.net/blog/wp-content/uploads/2020/10/07114553/me%CC%81dicos-influencers-en-Instagram.jpg'),
        _medicos(context, 'Maria G', 'Cirujano',
            'https://d7lju56vlbdri.cloudfront.net/var/ezwebin_site/storage/images/_aliases/img_1col/noticias/solo-el-8-de-las-medicas-alcanza-puestos-de-responsabilidad-en-hospitales/3405721-5-esl-MX/Solo-el-8-de-las-medicas-alcanza-puestos-de-responsabilidad-en-hospitales.jpg'),
        _medicos(context, 'Susana M', 'Cirujano',
            'https://www.soyvida.com/__export/1589325312150/sites/debate/img/2020/05/12/doctor_crop1589325143700.jpg_976912859.jpg')
      ],
    );
  }

  Widget _medicos(context, nombre, Especialidad, link) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 370,
        height: 100,
        child: InkWell(
          onTap: () {},
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
                      backgroundImage: Image(image: NetworkImage(link)).image,
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
