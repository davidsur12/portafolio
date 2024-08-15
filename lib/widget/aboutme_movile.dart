import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AboutmeMvile extends StatefulWidget {
  const AboutmeMvile({super.key});

  @override
  State<AboutmeMvile> createState() => _AboutmeMvileState();
}

class _AboutmeMvileState extends State<AboutmeMvile> {
  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(50),
      //color:Colors.green,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      color:Colors.green,),
child:Column(children:[
  
 Container(
  width: width,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [

  Text('Acerca de mi',  style:GoogleFonts.anton(fontSize:30, color:Color(4282329156) ), textAlign: TextAlign.start,),
  SizedBox(height: 15,),
  SizedBox(width: width/10,),
Image.asset('assets/icon/programacion.png', width: width/3.5,),
Text('Soy un desarrollador móvil de 28 años e utilizando tecnologías como Java, Kotlin y Flutter. Mi trayectoria profesional incluye el desarrollo de proyectos diversos, donde he aplicado mis habilidades para diseñar, implementar y mantener aplicaciones móviles eficientes y escalables. Mi pasión por la tecnología y la innovación me impulsa a buscar constantemente nuevas soluciones y mejorar mis competencias técnicas.',
 style:GoogleFonts.nunito(fontSize:18, ), textAlign: TextAlign.start,)

],)),

SizedBox(width: width/10,),

]

)

    );
  }
}