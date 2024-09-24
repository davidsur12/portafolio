import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio/widget/about_me.dart';
import 'package:portafolio/widget/footer.dart';
import 'package:portafolio/widget/tecnologuias.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
//https://pub.dev/packages/social_media_buttons

class CapaOnePresetacion extends StatefulWidget {
  const CapaOnePresetacion({super.key});

  @override
  State<CapaOnePresetacion> createState() => _CapaOnePresetacionState();
}

class _CapaOnePresetacionState extends State<CapaOnePresetacion> {

  final Uri _urlGithub = Uri.parse('https://github.com/davidsur12');
   @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  
    Container(
  width: width / 1.1,
  //container principal
  //color: Colors.green,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: height / 18),

      
     Container(
      margin: EdgeInsets.only(top: 100),
      height: height/1.2,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
             // color: Colors.green,
              width:width/5 ,
              
              child:
              Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(5),
                
                child: Text('Hola soy Johnnatan', textAlign: TextAlign.start,  style:GoogleFonts.nunito(fontSize:18))),
                
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
        Container(
          margin: EdgeInsets.only(bottom: 145),
          child:   Center(child: ClipOval(
            child: Container(
              width: (width/3.5),
              height:(width/3.5),
             // margin: EdgeInsets.only(bottom: 300),
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
     ) )
        ],
      )),
    AboutMe(),
   Tecnologia() ,
   SizedBox(height: 20,),
   Footer()
   
   ],
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
      url: "https://www.instagram.com/jhonatandavid9?igsh=MWo5MjA2Z2N5bmZjdA==",
     //color: Colors.blue,
  ),
   SocialMediaButton.github(
     onTap: (){
       print('Github');
      // _launchUrl(_urlGithub);
     },
     url:"https://github.com/davidsur12",
     size: 35,
     //color: Colors.blue,
  ),
  
   SocialMediaButton.twitter(
     onTap: (){
       print('Instagram');
     },
     url: "https://x.com/David4125327916",
     size: 35,
     
  ),
    SocialMediaButton.google(
     onTap: (){
       print('Gmail');
       _sendEmail();
     },
     size: 35,
     
  ),
  ]);
  
 
}

Widget buildSocialMediaIcon(){
  return Icon(SocialMediaIcons.github_circled);
}

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');

    }
  }

  void _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: '',
      path: 'jhonatandavid9@gmail.com',  // Dirección de correo
      queryParameters: {
        'subject': ' ',   // Asunto del correo
        'body': ' '  // Cuerpo del correo
      },
    );

    if (await canLaunch(emailUri.toString())) {
      await launch(emailUri.toString());
    } else {
      throw 'No se pudo abrir la aplicación de correo';
    }
  }
}

