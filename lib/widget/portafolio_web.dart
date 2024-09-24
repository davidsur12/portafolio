import 'package:flutter/material.dart';
import 'package:portafolio/widget/card_trabajo.dart';

class PortafolioWeb extends StatefulWidget {
  const PortafolioWeb({super.key});

  @override
  State<PortafolioWeb> createState() => _PortafolioWebState();
}

class _PortafolioWebState extends State<PortafolioWeb> {

  double width_dista = 40;
  final Uri _urlMovieReview = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.moviepeli.peliculamovie&pli=1');

  final Uri _urlConverterImage = Uri.parse(
      'https://davidsur12.github.io/ConverterImage/');

  final Uri _urlConverter = Uri.parse(
      'https://davidsur12.github.io/convert/#/');


  @override
  Widget build(BuildContext context) {
    return Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:

       [Flexible(child:CardTrabajo(titulo: "Review Movies", imagen: Image.asset("assets/icon/descarga.png", width: 150,), descripcion: "Aplicacion desarrollada con flutter para obtener informacion sobre el mundo del cine con los ultimos estrenos ",url: _urlMovieReview)),
         SizedBox(width: width_dista,),
         Flexible(child:CardTrabajo(titulo: "ConverterImage", imagen: Image.asset("assets/icon/ImageConverter.png", width: 150), descripcion: "ConverterImage  es una herramienta sencilla que permite convertir imágenes en matrices de bytes para su uso en pantallas OLED y TFT con arduino", url: _urlConverterImage ,)),
         SizedBox(width: width_dista,),
         Flexible(child:CardTrabajo(titulo: "Converter", imagen: Image.asset("assets/icon/convertir2.png", width: 150), descripcion: "Este convertidor nos permite cambiar el formato de  imagenes", url:_urlConverter )),
         SizedBox(width: width_dista,),
         ]

    );
  }
}
