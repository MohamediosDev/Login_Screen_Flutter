import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

@override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
      
       leading: IconButton(icon: 
       Icon(
         Icons.menu
         ), 
         onPressed:  
         onNotifactionPressed,),
       title: Text('First App'),
       actions: [
         IconButton(
           icon: Icon(
             Icons.notifications
             ),
           onPressed: onNotifactionPressed,
         )
       ],
       centerTitle: true,
       backgroundColor: Colors.teal,
     ),
     body: Column (
       children: [
       Padding(
         padding: const EdgeInsets.all(50.0),
         child: Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadiusDirectional.only(
               topStart: Radius.circular(20.0),
             )
            
               
               
           ),
           clipBehavior: Clip.antiAliasWithSaveLayer,
           child: Stack(
             alignment: Alignment.bottomCenter,
             children: [
            Image(
                 image: NetworkImage('https://api.contentstack.io/v2/assets/575e4d1c0342dfd738264a1f/download?uid=bltada7771f270d08f6'),
                 width: 200.0 ,
                 height:200.0,
                 fit: BoxFit.cover,
               ),
            Container(
             color: Colors.black.withOpacity(.6),
             width: 200.0,
             padding: EdgeInsets.symmetric(
               vertical: 10.0,
               horizontal: 10.0
             ),
             child: Text('El Far Elsondk',
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 20.0,
               color: Colors.white
             ),
             ),
           ),
             ],
           ),
         ),
       ),
       ],
     )
   );

  }


   void onNotifactionPressed() {
  print('Hello World🚀');
}
}

