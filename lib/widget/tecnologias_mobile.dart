import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/widgets.dart';
class TecnologiaMobile extends StatefulWidget {
  const TecnologiaMobile({super.key});

  @override
  State<TecnologiaMobile> createState() => _TecnologiaMobileState();
}

class _TecnologiaMobileState extends State<TecnologiaMobile> {
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    return (
      
      
   Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: Axis.vertical,
        children:[
SizedBox(height:20),
card('assets/icon/java.png', 'Java', width),
SizedBox(height:10),
card('assets/icon/flutter.png', 'Flutter', width),
SizedBox(height:10),
card('assets/icon/kotlin.png', 'Kotlin', width),
SizedBox(height:10),
    ])

    );
  }

   Widget card(String imagen, String titulo, double width){
//una targerta por cada tecnologia
return Container(

  width: width/1.4,

  
  padding: EdgeInsets.all(18),
  //color:Colors.green,
  decoration: BoxDecoration(
      gradient: LinearGradient(
               colors: [Colors.yellow, Colors.orange],
              begin: Alignment.bottomLeft,
               end: Alignment.topRight,
          ),
    //color:Colors.grey,
    borderRadius: BorderRadius.circular(20) ),
  child:Column(children:[Image.asset(imagen, width:75 ), SizedBox(height: 20) ,
  Animate(
    
  effects: [FadeEffect(), ScaleEffect()],
  child: Text(titulo, style:GoogleFonts.nunito(fontSize:25)),
).fadeIn(duration: 600.ms)
  ]));

  }
  
}