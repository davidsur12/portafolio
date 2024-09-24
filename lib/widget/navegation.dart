import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portafolio/widget/screen_responsive.dart';
import 'package:portafolio/widget/btn_nav.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:portafolio/bloc/cubit/view_pague_cubit.dart';
import 'package:get/get.dart';


class NavegationBar extends ResponsiveWidget {
  const NavegationBar({super.key});
  
  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
    return BuilMovile2();//BuildMobile();
  }
  
  @override
  Widget buildWeb(BuildContext context) {
    // TODO: implement buildWeb
 return BuildWeb();
  }



}

class BuildMobile extends StatelessWidget {
   BuildMobile({super.key});

 
   @override
  Widget build(BuildContext context) {
       // final containerHeight = useState<double>(0.0);
        final containerHeight = useState<double>(0.0);
      
    //final isScrolled = ref.watch(scrolledProvider);
    // final navBarColor = isScrolled ? Colors.blue : Colors.white;
    return  Stack(children: [
      AnimatedContainer(
       margin: EdgeInsets.only(top: 70.0),
          duration: Duration(milliseconds: 350),
          curve: Curves.ease,
          //height: containerHeight.value,
          child: SingleChildScrollView(
            child: Column(
              children: [
                BtnNav(
                  color: Theme.of(context).colorScheme.onSurface,
                  icon: Icon(Icons.abc_sharp, color:Colors.green),
                  onTap: (){},text: 'Presentacion',) ,
    BtnNav(
      color: Theme.of(context).colorScheme.onSurface,
      icon: Icon(Icons.abc_sharp, color:Colors.green),
      onTap: (){},text: 'Proyectos',) ,
             ],
            ),
          ),
          
          
          ),
      Container(
      //color: Colors.white,
    padding: EdgeInsets.all(20),
    child:Row(children:[
     // Icon(Icons.favorite, size: 50.0, color: Colors.black, semanticLabel: 'Text',),
      Image.asset('assets/icon/icono.png', width:85),
    //Text('Johnnatan David Dueñas', style: Theme.of(context).textTheme.bodyText1,),
   // Text('Johnnatan David Dueñas', style: GoogleFonts.indieFlower(fontSize: 22, ) ),
    SizedBox(width: 10),
    Expanded(child: Container()),
    Material(child: InkWell(
      onTap: (){
        //final height = containerHeight.value > 0 ? 0.0 : 240.0;
        //containerHeight.value = height;
      },
      child: Icon(Icons.menu),
    ),)

    ]))],)
     ;
  }
}

class BuildWeb extends StatelessWidget {
  const BuildWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      //color: Colors.white,
    padding: EdgeInsets.all(10),
    child:Row(children:[
     // Icon(Icons.mobile_friendly , size: 50.0,  semanticLabel: 'Text',),
     Image.asset('assets/icon/icono.png', width:55),
    //Text('Johnnatan David Dueñas', style: Theme.of(context).textTheme.bodyText1,),
    Text('Johnnatan Dueñas', style: GoogleFonts.indieFlower(fontSize: 22, ) ),
    SizedBox(width: 10),
    Expanded(child: Container()),
    BtnNav(
      icon: Icon(Icons.person),
      onTap: (){
      context.read<ViewPage>().ChanguePague(1);
      
    },text: 'Presentacion',
    color: Theme.of(context).colorScheme.onSurface ,) ,
    BtnNav(
      icon: Icon(Icons.work),
      onTap: (){
      context.read<ViewPage>().ChanguePague(2);
    },text: 'Proyectos',
    color: Theme.of(context).colorScheme.onSurface) ,
  
    IconButton(onPressed: (){
      //btn cambio de tema  change_circle_sharp
       Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    }, icon: Icon(Icons.lightbulb_circle_sharp , size: 50, ))

    ]));
  }
}



/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
*/

class BuilMovile2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VisibilityExample();
    
  /*  MaterialApp(
      home: VisibilityExample()
    );

    */
  }
}

class VisibilityExample extends StatefulWidget {
  @override
  _VisibilityExampleState createState() => _VisibilityExampleState();
}

class _VisibilityExampleState extends State<VisibilityExample> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(children:[
            //Icon(Icons.mobile_friendly , size: 50.0,  semanticLabel: 'Text',),
         // Text('Johnnatan David Dueñas', style: GoogleFonts.indieFlower(fontSize: 22,) ),
          Image.asset('assets/icon/icono.png', width:55),
        
          Expanded(child: Container()),
          IconButton(onPressed: (){
       Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    }, icon: Icon(Icons.lightbulb_circle_sharp, size: 50, )),
          IconButton(onPressed: (){

             setState(() {
                _isVisible = !_isVisible;
              });
          }, icon: Icon(Icons.menu,  size: 40,  )),

         
           ]),
 
          /*
           Icon(Icons.mobile_friendly , size: 50.0,  semanticLabel: 'Text',),
    //Text('Johnnatan David Dueñas', style: Theme.of(context).textTheme.bodyText1,),
    Text('Johnnatan David Dueñas', style: GoogleFonts.indieFlower(fontSize: 22, ) ),
    SizedBox(width: 10),
    Expanded(child: Container()),*/

          Visibility(
            visible: _isVisible,
            child: Container(
              color: Theme.of(context).colorScheme.onTertiary,
              child: Column(children:[
              
              
              ElevatedButton(onPressed: (){
                context.read<ViewPage>().ChanguePague(1);
              }, child: Container(child:Center(child:Text('Presentacion',
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
              
              )),
              width:width ,
              ),
              style:  styltn(),
              ),
               (ElevatedButton(onPressed: (){
                context.read<ViewPage>().ChanguePague(2);
               }, child: Container(child:Center(child:Text('Portafolio'
               ,  style: TextStyle(color: Theme.of(context).colorScheme.onSurface))),
              width:width ,
              ),
              style:  styltn(),
              ))]),)
          
          
          ),
          SizedBox(height: 20),
         
        ],
      ),
    );
  }

ButtonStyle  styltn(){

  return  ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
  surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
  visualDensity: VisualDensity(horizontal: 0, vertical: 0),
  shadowColor: MaterialStateProperty.all(Colors.transparent));
}
}

 


/*

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedOpacity Example'),
        ),
        body: AnimatedOpacityExample(),
      ),
    );
  }
}

class AnimatedOpacityExample extends StatefulWidget {
  @override
  _AnimatedOpacityExampleState createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 500),
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
              child: Center(child: Text('Visible')),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
            child: Text(_isVisible ? 'Hide' : 'Show'),
          ),
        ],
      ),
    );
  }
}

 */

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Imagen con Marco Redondo'),
        ),
        body: Center(
          child: ClipOval(
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 4.0,
                ),
              ),
              child: Image.network(
                'https://example.com/tu_imagen.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


 */