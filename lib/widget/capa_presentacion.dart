import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio/widget/tecnologuias.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:flutter_animate/flutter_animate.dart';
//https://pub.dev/packages/social_media_buttons

class CapaOnePresetacion extends StatefulWidget {
  const CapaOnePresetacion({super.key});

  @override
  State<CapaOnePresetacion> createState() => _CapaOnePresetacionState();
}

class _CapaOnePresetacionState extends State<CapaOnePresetacion> {
   @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  
    Container(
  width: width / 1.2,
  //color: Colors.green,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: height / 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width:width/5 ,
              child:
              Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(5),
                
                child: Text('Hola soy Jhonatan', textAlign: TextAlign.start,  style:GoogleFonts.nunito(fontSize:18))),
                
               Animate(
    
  effects: [FadeEffect(), ScaleEffect()],
  child:  Text('Un Desarrollador de Aplicaciones Moviles', style: GoogleFonts.anton(fontSize: 40, color:Colors.green ) ),
).fadeIn(duration: 600.ms),
               
                SizedBox(height: 12),
                Container(
    width:width/2.5,
    child:  Text('E desarrollado aplicaiones para la plataforma android  en diferentes tecnologias como lo son java, kotlin y flutter',
    style:GoogleFonts.nunito(fontSize:17))
  ),
  buildSocialMediaButton()
              ],
            ),
         )
          ),
        
        
         Flexible(child: Container(width:width/10)),
          Center(child: ClipOval(
            child: Container(
              width: (width/3.5),
              height:(width/3.5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 4.0,
                ),
              ),
              child:Container(
                color:Colors.green,
                child:Image.asset('assets/imagenes/1_sin_fondo.png', scale: 1.0)),
            ),
          ),
     ) 
        ],
      ),
   
   Tecnologia() ],
  ),
);

  
  
  }

Widget buildSocialMediaButton(){



  return Row(children:[ 
    SocialMediaButton.instagram(
     onTap: (){
       print('Instagram');
     },
     size: 35,
     //color: Colors.blue,
  ),
   SocialMediaButton.github(
     onTap: (){
       print('Github');
     },
     size: 35,
     //color: Colors.blue,
  ),
  
   SocialMediaButton.twitter(
     onTap: (){
       print('Instagram');
     },
     size: 35,
     
  )
  ]);
  
 
}

Widget buildSocialMediaIcon(){
  return Icon(SocialMediaIcons.github_circled);
}
}

/*
    Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(height: (height/8),),
Center(child:Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children:[Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text('Hola soy Jhonatan'),
    Flexible(
      
      child:  Text('Un Desarrollador de Aplicaciones Moviles', style: GoogleFonts.anton(fontSize: 20, ) ))
   ,
   Container(
    width:width/2.5,
    child:  Text('E desarrollado aplicaiones para la plataforma android  en diferentes tecnologias como lo son java, kotlin y flutter')
  )
  ],), 
 // SizedBox(width:width/10),//separador del texto y la imagen
   //Expanded(child: Container(width:width/4)),
   Flexible(child: Container(width:width/10)),
   
  
 Center(child: ClipOval(
            child: Container(
              width: (width/3.5),
              height:(width/3.5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.transparent,
                  width: 4.0,
                ),
              ),
              child:Image.asset('assets/imagenes/1_sin_fondo.png', scale: 1.0),
            ),
          ),
     )   
  ]))
      
    ])
   
*/

/*


*/