import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio/widget/aboutme_movile.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:portafolio/widget/tecnologias_mobile.dart';
import 'package:portafolio/widget/footer.dart';
import 'package:url_launcher/url_launcher.dart';
class CapaPresentacionMovile extends StatefulWidget {
  const CapaPresentacionMovile({super.key});

  @override
  State<CapaPresentacionMovile> createState() => _CapaPresentacionMovileState();
}

class _CapaPresentacionMovileState extends State<CapaPresentacionMovile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(children:[
  Column(
    
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container(
                padding: EdgeInsets.all(5),
                color: Theme.of(context).colorScheme.onBackground,
                child: Text('Hola soy Johnnatan')),
                Text('Un Desarrollador de Aplicaciones Moviles', style: GoogleFonts.anton(fontSize: 30, color:Colors.green ),
                textAlign:TextAlign.center
                 ),
                SizedBox(height: 12),
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
                child:Image.asset('assets/imagenes/1_sin_fondo.png', scale: 1.0, )),
            ),
          ),
     ) 
       ,
           SizedBox(height: 12),
                Container(
    width:width/1.3,
    child:  Text('E desarrollado aplicaiones para la plataforma android  en diferentes tecnologias como lo son java, kotlin y flutter',
    textAlign:TextAlign.center)
  ),
  buildSocialMediaButton(),

              ],
            )

,
 SizedBox(height: 20,),
AboutmeMvile(),
TecnologiaMobile(),
Footer()
    ]);
  
  }

  Widget buildSocialMediaButton(){



  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[ 
    SocialMediaButton.instagram(
     onTap: (){
       print('Instagram');
     },
      url: "https://www.instagram.com/jhonatandavid9?igsh=MWo5MjA2Z2N5bmZjdA==",
     size: 35,
     //color: Colors.blue,
  ),
   SocialMediaButton.github(
     onTap: (){
       print('Github');
     },
     url:"https://github.com/davidsur12",
     size: 35,
     //color: Colors.blue,
  ),
  
   SocialMediaButton.twitter(
     onTap: (){
       print('Twiter');
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

      )
  ]);
  
 
}
  void _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'fdsf',
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

/*
https://pub.dev/packages/flutter_animate/install

text animado
import 'package:flutter_animate/flutter_animate.dart';

Animate(
  effects: [FadeEffect(), ScaleEffect()],
  child: Text("Hello World!"),
)

Text("Hello").animate()
  .fade(duration: 500.ms)
  .scale(delay: 500.ms) // runs after fade.

  Text("Hello").animate(
    delay: 1000.ms, // this delay only happens once at the very start
    onPlay: (controller) => controller.repeat(), // loop
  ).fadeIn(delay: 500.ms) // this delay happens at the start of each loop

  Text("Hello").animate()
  .fadeIn(duration: 600.ms)
  .then(delay: 200.ms) // baseline=800ms
  .slide()


*/