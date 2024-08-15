import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
class Tecnologia extends StatefulWidget {
  const Tecnologia({super.key});

  @override
  State<Tecnologia> createState() => _TecnologiaState();
}

class _TecnologiaState extends State<Tecnologia> {
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      
      children:
    [SizedBox(height:20),
       Animate(
    
  effects: [FadeEffect(), ScaleEffect()],
  child: Text('Tecnologias', style:GoogleFonts.nunito(fontSize:27)),
).fadeIn(duration: 600.ms)
      ,
      SizedBox(height:25),
      (
      
      Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: Axis.horizontal,children:[

card('assets/icon/java.png', 'Java', width),
SizedBox(width:10),
card('assets/icon/flutter.png', 'Flutter', width),
SizedBox(width:10),
card('assets/icon/kotlin.png', 'Kotlin', width)
    ]))]);
  }


  Widget card(String imagen, String titulo, double width){
//una targerta por cada tecnologia
return Container(

  width: width/3.7,

  
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

