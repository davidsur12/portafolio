
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CardTrabajo extends StatelessWidget {
  String titulo;
  Image imagen;
  String descripcion;
  Uri url;

  //Image.asset("assets/imagenes/1.png")
  CardTrabajo(
      {super.key, required this.titulo, required this.imagen, required this.descripcion, required this.url });



  @override
  Widget build(BuildContext context) {
    return card(titulo, imagen, descripcion);
  }


  Widget card(String titulo, Image imagen, String descripcion) {
    return Container(
width: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          // Color de fondo del container
          borderRadius: BorderRadius.circular(10),
          // Bordes redondeados con radio de 20
          border: Border.all(
            color: Colors.green, // Color del borde
            width: 3, // Ancho del borde
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


          Container(

            decoration: BoxDecoration(
              color: Colors.green, // Color de fondo del container
              //borderRadius: BorderRadius.circular(20), // Bordes redondeados con radio de 20

            ),
            alignment: Alignment.center,
            // color: Colors.blue,
            width: 400,
            height: 60,

            child: (Text(titulo, textAlign: TextAlign.center,
                style: GoogleFonts.nunito(fontSize: 20))),)

          ,
          SizedBox(height: 20,),
          imagen,
          SizedBox(height: 20,),
          Container(
            height: 200,
            color: Colors.green,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Text(descripcion, textAlign: TextAlign.center,),),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                // Color de fondo (equivalente a `primary` en versiones anteriores)
                foregroundColor: Colors
                    .black, // Color del texto (equivalente a `onPrimary`)
              ),
              onPressed: () {
                _launchUrl(url);
              },
              child: Container(
                  color: Colors.white,
                  width: 350,
                  height: 30,
                  child: Text("Aplicacion", textAlign: TextAlign.center,))
          )


        ],),);
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
