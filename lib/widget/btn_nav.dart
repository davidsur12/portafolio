
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BtnNav extends StatelessWidget {

  final VoidCallback onTap;
  final String text;
  final Widget icon;
  final Color color;

  const BtnNav({super.key, required this.onTap, required this.text, required this.icon, required  this.color});

  @override
  Widget build(BuildContext context) {
     
    return MouseRegion(
      onEnter: (value) {
        //textColor.value = Colors.green;
      },
      onExit: (value) {
        //textColor.value = Colors.black;
      },
      child:btnTwo(this.color)
      
      
    );
  }


Widget btnOne(){

return Material(
        color:Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
              margin: EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            child: Text(text),
          ),


        )
        
      );

}


Widget btnTwo(Color color){

return ElevatedButton.icon(onPressed: onTap, icon: this.icon, label: Text(this.text ,
 style: GoogleFonts.indieFlower(fontSize: 22,color: color)),

style: ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.transparent),
  surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
  visualDensity: VisualDensity(horizontal: 0, vertical: 0),
  shadowColor: MaterialStateProperty.all(Colors.transparent),
),

);


}
}

