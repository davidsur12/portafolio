

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    double  width = MediaQuery.of(context).size.width;
    double  height = MediaQuery.of(context).size.height;
    return Container(
      //color: Colors.grey,
      width: width,
      child:Column(children: [
        Padding(padding:EdgeInsets.only(top: 20, bottom: 40) ),
        Image.asset('assets/icon/icono.png', width:85),
        
        SizedBox(height: 20,),
        Text('Un paso a la vez',  style:GoogleFonts.nunito(fontSize:20)),
        SizedBox(height: 20,),
         
       Center(child: buildSocialMediaButton()),
        SizedBox(height: 20,),],));
  }

  Widget buildSocialMediaButton(){



  return Row(
    
    mainAxisAlignment: MainAxisAlignment.center,
    children:[ 
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
     
  ),
  SocialMediaButton.google(
     onTap: (){
       print('Gmail');
     },
     size: 35,
     
  ),
   
  ]);
  
 
}
}