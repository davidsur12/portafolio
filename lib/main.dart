import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:portafolio/bloc/cubit/view_pague_cubit.dart';
import 'package:portafolio/screen/proyectos.dart';
import 'package:portafolio/theme/theme.dart';
import 'package:portafolio/screen/presentacion.dart';
import 'package:portafolio/widget/navegation.dart';



void main() {
  runApp(  MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MultiBlocProvider(providers: [BlocProvider(create:(_) => ViewPage())], child: MyApp2(),);
  }


}

class MyApp2 extends StatelessWidget {
  
 const MyApp2({super.key});



  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double maxWith = width > 1300 ? width-(width*0.06) : width;

    return GetMaterialApp(
      title: 'Portafolio',
      theme: ThemeData(colorScheme: MaterialTheme.lightScheme(),
      
      textTheme: TextTheme(
        //bodyText1:TextStyle(fontSize: 20)
      )) ,
      darkTheme: ThemeData(colorScheme: MaterialTheme.darkMediumContrastScheme()),
      home:Scaffold(
        
        body:Container(
          //color: Colors.green,
          margin: EdgeInsets.only(left: (width*0.03), right: (width*0.03)),
          width: maxWith,
          child: SingleChildScrollView(child:  Column(children: [
          
            Center(
              child:NavegationBar ()),
          BlocBuilder<ViewPage , int>(builder: (context, state){
            if(state == 1 ){
              print('Presentacion');
             return  Presentacion();

            }
            else if(state == 2){
              print('Proyetos');
            return Proyectos();

            }
            return Presentacion();

          })
          
          ],)))
           
       
      
        
        ),

        
     
    );
  }
  
}

/*

 WidgetsFlutterBinding.ensureInitialized();
  // Asegúrate de inicializar todos los servicios necesarios aquí
  await initializeServices();

Future<void> initializeServices() async {
  // Inicializa tus servicios aquí
  await engine.initializeServices();
  if (engine.state == DebugEngineInitializationState.initializedServices) {
    engine.initializeEngineUi();
  } else {
    print('No se puede inicializar la UI del motor. Estado actual: ${engine.state}');
  }
}
*/

//links
//https://www.youtube.com/watch?v=PwKZzBy8XnE
//https://material-foundation.github.io/material-theme-builder/
//https://www.youtube.com/watch?v=rAVaMRXVCIs&t=892s
//https://github.com/Yayo-Arellano/flutter_examples_compilation/blob/main/basic_landing_webpage/lib/main.dart
// https://pub.dev/packages/pluto_menu_bar menu

/*
 appBar:  AppBar(title: const Text('Portafolio'), 
         actions: [
        IconButton(onPressed: (){
          Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
        }, icon: Icon(Icons.light_mode))],),
        
*/
/*
  return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: MaterialTheme.lightScheme()) ,
      darkTheme: ThemeData(colorScheme: MaterialTheme.darkMediumContrastScheme()),
      home:Scaffold( appBar:  AppBar(title: const Text('Portafolio'), actions: [
        IconButton(onPressed: (){
          Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
        }, icon: Icon(Icons.light_mode))],),
        
        body: Center(child: ElevatedButton(onPressed: (){

        }, child:Text('Cambio de Tema'))),),

        
     
    );
     */