import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
    return runApp
    (
        MaterialApp
        (
          debugShowCheckedModeBanner: false,
            home:Scaffold
            (
               backgroundColor: Colors.blue.shade200,
                 appBar: AppBar
                 (
                     title:Text("Magic Ball"),
                     centerTitle: true,
                     backgroundColor: Colors.blue.shade800,
                 ),
                 body:Ball(),
            )
        )
    );
}

class Ball extends StatefulWidget
{
  @override
  BallState createState() => BallState();
}

class BallState extends State<Ball>
{
  int num =1;
  @override
    Widget build(BuildContext context)
    {
       void fun()
       {
           num = Random().nextInt(5) +1;
           if(num==1)
           {
              print("Yes");
           }
            if(num==2)
           {
              print("No");
           }
            if(num==3)
           {
              print("Ask Again Later");
           }
            if(num==4)
           {
              print("The Anser is Yes");
           }
            if(num==5)
           {
              print("I have no Idea");
           }
       }
         return Center
         (
             child:Row
             (
                  children: <Widget>
                  [
                       Expanded
                       (
                            child:FlatButton
                            (
                                  onPressed: () 
                                  {
                                       setState(()
                                        {
                                            fun();   
                                        });
                                  }, 
                                  child:Image.asset('images/ball$num.png')
                            )
                       )
                  ],
             ),
         );
    }
}


