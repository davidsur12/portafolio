import 'package:flutter/material.dart';
import 'package:portafolio/widget/capa_presentacion.dart';
import 'package:portafolio/widget/capa_presentacion_mobile.dart';
import 'package:portafolio/widget/screen_responsive.dart';




class  Presentacion extends ResponsiveWidget{

  Presentacion({super.key});
  
  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
   return  BuilMovilePresentacion();
  }
  
  @override
  Widget buildWeb(BuildContext context) {
    // TODO: implement buildWeb
   return BuilWebPresentacion() ;
  }
}

class BuilMovilePresentacion  extends StatelessWidget {
  const BuilMovilePresentacion ({super.key});

  @override
  Widget build(BuildContext context) {
    return  CapaPresentacionMovile();
  }
}

class BuilWebPresentacion  extends StatelessWidget {
  const BuilWebPresentacion ({super.key});

  @override
  Widget build(BuildContext context) {
    return CapaOnePresetacion();
  }
}

/*
class Presentacion extends StatefulWidget {
  const Presentacion({super.key});

  @override
  State<Presentacion> createState() => _PresentacionState();
}

class _PresentacionState extends State<Presentacion> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(color: Colors.green,);
  }
}

*/