import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected_index=0;
  
  var g=Icon(Icons.favorite_border,
                      color: Colors.grey
                      
                      
                      );
var k=Icon(Icons.favorite_rounded,
                      color: Colors.red
                      
                      
                      );
var v=Icon(Icons.favorite_border,
                      color: Colors.grey
                      
                      
                      );

                      bool _loved= false;
                      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,10,17,0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
            
                    Text("Hi! Niloy",
                    style:TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
            
            
                    )
                    
                    
                    
                    ),
            
                    
            
            
                    Stack(
                      children:[
                    Icon(Icons.face,
                    color:Colors.white,
                    ),
                    Positioned(
                      right:2,
                      child: Image.asset("assets/images/dot1.png"
                      ,
                      height: 10.0,
                      width: 10.0,
                      
                      
                      ),
                    ),
                     
            
            
            
                      ]
                    )
            
            
            
            
            
            
            
                  ]
                ),
                Text("\nLet's cook together",
                style:TextStyle(
                    color:Colors.white.withOpacity(.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                
                
                )
                
                      ),
                 SizedBox(height:20),
          
                 Container(
                     height: 50,
                     width: 340,
                     decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20))

                     ),
                     
                     child:Center(
                       child: TextField(
                        textAlign: TextAlign.left,
                        
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search,color:Colors.white),
                          hintText: "Search for Recipes",
                          hintStyle: TextStyle(color:Colors.white,fontSize: 17,)
          
                        ),
                       ),
                     )
          
                 ),
                 
                Container(
                 height: 350,
                 
                  child: ListView.builder(
                   shrinkWrap: false,
                   scrollDirection:Axis.horizontal ,
                   itemCount: 6,
                   itemBuilder: (context,index)=>
                     Align(
                      alignment: Alignment.centerLeft,
                       child: Container(
                         height:250,
                         width:200,
                         margin: EdgeInsets.all(15.0),
                         
                         decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.all(Radius.circular(30)
                          )
                         ),
                         child: Stack(
                           clipBehavior:Clip.none ,
                        
                          children:[
                        
                           Positioned(
                             left:6,
                             top:8,
                            child: IconButton(onPressed: ()=>{
                                       setState((){
                                          if(!_loved){
                                         v=g;
                                         _loved=true;
                                        }else{
                                         v=k;
                                         _loved=false;
                                        }
                                       })
                            }, 
                            
                            
                            icon:v,
                            
                            ),
                           ),
                        
                          Positioned(
                        
                           top:-40,
                           right:-55,
                        
                            child: Image.asset("assets/images/burger.png",
                            height:150,
                            width: 150,
                            
                            ),
                          ),
                          
                          Positioned(
                           left:6.0 ,
                           top:80,
                            child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             
                              children: [
                               Text("Snacks",
                               style:TextStyle(
                                 color: Colors.blueAccent,
                                 fontWeight: FontWeight.normal,
                                 fontSize:14,
                               )
                               
                               ),
                               SizedBox(height: 5.0,),
                               Text("Double Cheese Beef Burger",
                               style:TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                                 fontSize:15,
                               )
                               
                               ),
                                SizedBox(height:8.0),
                                Row(
                                                    children:
                                 List.generate(5, (index) => Icon(Icons.star,color:Colors.deepOrange),
                                 
                                 
                                 
                                 )
                                                    
                                                   ),
                                SizedBox(height: 5.0,),
                               Text("120 calories",
                               style:TextStyle(
                                 color: Colors.orangeAccent,
                                 fontWeight: FontWeight.bold,
                                 fontSize:14,
                               )
                               
                               ),
                               
                               ]
                                  
                                  
                            ),
                          )
                          
                          
                          
                         
                                     ]
                                     ),
                                       
                        
                                       ),
                     ),
                  ),
                ),


//start
SizedBox(height: 10),


 ListView.builder(
 // physics: ScrollPhysics(parent:null),
  shrinkWrap: true,
  scrollDirection:Axis.vertical ,
  itemCount: 6,
  itemBuilder: (context,index)=>
    Container(
      height:250,
      width:200,
      margin: EdgeInsets.all(15.0),
      
      decoration: BoxDecoration(
       color: Colors.white,
       borderRadius:BorderRadius.all(Radius.circular(30)
       )
      ),
      child: Stack(
        clipBehavior:Clip.none ,
     
       children:[
     
        Positioned(
          left:6,
          top:8,
         child: IconButton(onPressed: ()=>{
                    setState((){
                       if(!_loved){
                      v=g;
                      _loved=true;
                     }else{
                      v=k;
                      _loved=false;
                     }
                    })
         }, 
         
         
         icon:v,
         
         ),
        ),
     
       Positioned(
     
        top:-40,
        right:-55,
     
         child: Image.asset("assets/images/burger.png",
         height:150,
         width: 150,
         
         ),
       ),
       
       Positioned(
        left:6.0 ,
        top:80,
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
           children: [
            Text("Snacks",
            style:TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.normal,
              fontSize:14,
            )
            
            ),
            SizedBox(height: 5.0,),
            Text("Double Cheese Beef Burger",
            style:TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize:15,
            )
            
            ),
             SizedBox(height:8.0),
             Row(
                                 children:
              List.generate(5, (index) => Icon(Icons.star,color:Colors.deepOrange),
              
              
              
              )
                                 
                                ),
             SizedBox(height: 5.0,),
            Text("120 calories",
            style:TextStyle(
              color: Colors.orangeAccent,
              fontWeight: FontWeight.bold,
              fontSize:14,
            )
            
            ),
            
            ]
               
               
         ),
       )
       
       
       
      
                  ]
                  ),
                    
     
                    ),
 )






                
              /* SingleChildScrollView(
                 child: Container(
                   height: 300,
                   
                   child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    
                    itemCount: 7,
                    itemBuilder: (context,index)=>
                    Container(height: 200,
                    
                    color:Colors.red, 
                    
                    )
               
               
               
               
               
               
               
               
               
                    )
               
                 ),
               )*/
            /* Container(
              height: 300,
             
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context,index)=>
                Container(height:100,width: 100 ,
                  color: Colors.red,
                  margin: EdgeInsets.all(8),),
                )
                
             )*/
                
                
            
            
            
            ],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF212121),
      bottomNavigationBar: Container(
        height:80.0,
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,
         
          ),
          label:" "
          ),
           BottomNavigationBarItem(icon: Icon(Icons.search,
          
          ),
          label:" "
          ),
      
           BottomNavigationBarItem(icon: Icon(Icons.menu,
         
          ),
          label:" "
          ),
      
      
          BottomNavigationBarItem(icon: Icon(Icons.settings,
         
          ),
          label:" "
          ),
      
      
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF0D0D0D).withOpacity(0.5),
        elevation: 0.0,
        selectedItemColor: Color(0xFFFFC20D),
        unselectedItemColor: Color(0xFF8E8E8E),
        currentIndex: selected_index,
        onTap: (index){
          
          setState(() {
            selected_index=index;
          });
        }
        
        
      
        ),
      ),
      
      
      
      
    );
  }
}