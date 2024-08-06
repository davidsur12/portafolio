import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(50),
      //color:Colors.green,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      color:Colors.green,),
child:Row(children:[
  
 Container(
  width: width/2.5,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

  Text('Acerca de mi',  style:GoogleFonts.anton(fontSize:30, color:Color(4282329156) ), textAlign: TextAlign.start,),
  SizedBox(height: 15,),
Text('Soy un desarrollador móvil con 28 años de experiencia en la creación de aplicaciones utilizando tecnologías como Java, Kotlin y Flutter. Mi trayectoria profesional incluye el desarrollo de proyectos diversos, donde he aplicado mis habilidades para diseñar, implementar y mantener aplicaciones móviles eficientes y escalables. Mi pasión por la tecnología y la innovación me impulsa a buscar constantemente nuevas soluciones y mejorar mis competencias técnicas.',
 style:GoogleFonts.nunito(fontSize:17), textAlign: TextAlign.start,)

],)),

SizedBox(width: width/10,),
Image.asset('assets/imagenes/1.png', width: width/3.5,)
]

)

    );
  }
}