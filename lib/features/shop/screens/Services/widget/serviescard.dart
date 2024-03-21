import 'package:finalyearproject/features/shop/screens/Services/ServicesDetail.dart';
import 'package:flutter/material.dart';
class ServicesCard extends StatelessWidget {
  final serviceName;
  final servicesProvideName;
  final location;
 

  const ServicesCard({super.key,
  required this.serviceName,
  required this.servicesProvideName ,
  required this.location,});

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(10.10),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
        Text("$serviceName",
        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
      Text("$servicesProvideName",
      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
       Text("$location",
       style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
     
     ],),
     SizedBox(height: 10,),
     TextButton(onPressed: (){
      Navigator.push(context, (MaterialPageRoute(builder: (context)=>const ServicesDetail())));
     },
      child: Text("See More")),
      ],),
    ),);
  }
}