import 'package:flutter/material.dart';
import 'package:portafolio/widget/portafolio_movile.dart';
import 'package:portafolio/widget/portafolio_web.dart';
import 'package:portafolio/widget/screen_responsive.dart';

class Proyectos extends ResponsiveWidget{
  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
    return  ProyectosMovile ();
  }

  @override
  Widget buildWeb(BuildContext context) {
    // TODO: implement buildWeb
    return ProyectosWeb();
  }


  
}

class ProyectosMovile extends StatelessWidget {
  const ProyectosMovile({super.key});

  @override
  Widget build(BuildContext context) {
  return  PortafolioMovile();
  }
}

class ProyectosWeb extends StatelessWidget {
  const ProyectosWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return PortafolioWeb();
  }
}