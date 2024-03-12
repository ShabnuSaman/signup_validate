import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

   HomeScreen({super.key,required this.name,required this.email});
     String name,email;
   
  // final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
            radius: 40,
            ),
         SizedBox(height: 10,),
          Text(name,style: TextStyle(color: Colors.white,fontSize: 24),),
           SizedBox(height: 5,),
          Text(email,style: TextStyle(color: Colors.white),),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("204",style: TextStyle(color: Colors.green),),
                  Text("Following",style: TextStyle(color: Colors.grey),)
                ],
              ),
               Column(
                children: [
                  Text("2.5 M",style: TextStyle(color: Colors.green),),
                  Text("Followers",style: TextStyle(color: Colors.grey),)
                ],
              ),
               Column(
                children: [
                  Text("154",style: TextStyle(color: Colors.green),),
                  Text("Close friends",style: TextStyle(color: Colors.grey),)
                ],
              ),
            ],
          ),
          Row(
            children: [
              
            ],
          )
          ],
        ),
      )
    );
  }
}