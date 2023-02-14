



import 'package:cook/home.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';


class onboard extends StatefulWidget {
  const onboard({ Key? key }) : super(key: key);

  @override
  State<onboard> createState() => _onboardState();
}

class _onboardState extends State<onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFFFFC20D),
      body:SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          
          children:[
             Stack(
                 children: [

                  Container(
                  height:700,
                  width:MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    child: Image.asset("assets/images/burger.png",
                   
      
                  ),
                  
                  ),


                   Positioned(
                    bottom:40,
                    left:19,
                     child: Container(
                                  
                                  height:330.0,
                                 // margin: EdgeInsets.only(left:32.0,right:32.0),
                                  
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF212121) ,
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    boxShadow: [
                                      BoxShadow(
                                        offset:Offset(0,5),
                                        blurRadius: 6.0,

                                      )
                                    ]


                                  ),
                                  child:Center(
                                    child: Column(
                                         
                                          children:[
                                            SizedBox(height:10),
                                            SizedBox(
                                             child: Container(
                                              color: Colors.white,
                                             ),
                                             height: 5.0,
                                             width: 30.0,
                                            ),
                                            SizedBox(height: 30,),
                                            Text("Wanna Cook Something?",
                                            textAlign: TextAlign.center,
                                            style:
                                                 TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 40,
                                                  color: Colors.white,
                                                )

                                            

                                            ),
                                                    SizedBox(height: 15,),
                                            Text("No more confusion in cooking proccedures",
                                            textAlign: TextAlign.center,
                                            style:
                                                 TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.white54,
                                                )

                                            

                                            ),
                                            
                                            SizedBox(height: 35,),
                                            
                                                GestureDetector(
                                                  onTap:()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Home())) ,
                                                  child: Container(
                                                    
                                                    child:Center(
                                                      child: Text("Let's Go",
                                                      style:TextStyle(
                                                        color:Color(0xFF212121),
                                                        
                                                
                                                      )
                                                      ),
                                                    ),
                                                
                                                    height:50,
                                                    width: 170,
                                                    
                                                    decoration:BoxDecoration(
                                                    color:Color(0xFFFFFC20D),
                                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                                    
                                                
                                                     
                                                
                                                    )
                                                  ),
                                                )



                                          ]

                                       

                                    ),
                                  )
                                
                                ),
                   ),
           
      
                   
                  

                 ],
      
      
          
          
          
            ),

            
      
          
          ]
        ),
      )

    );
  }
}