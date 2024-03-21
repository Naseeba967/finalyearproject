import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/widgets/rating_and_share.dart';
import 'package:flutter/material.dart';
class ServicesDetail extends StatelessWidget {
  const ServicesDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Appbar(title:
     Text("Services Detail",
     style: TextStyle(fontWeight: FontWeight.bold),),),
     body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      SizedBox(height: 20,),
      Expanded(flex: 1,
        child: 
      Image(image: 
      NetworkImage("https://media.istockphoto.com/id/805089584/photo/just-relax-ill-take-care-of-the-rest.jpg?s=612x612&w=0&k=20&c=QRmBhp-E_v8rFStb7hkgHmcz2ZrsAW2AdWcZxINhsvc="),fit: BoxFit.fill,)
       
        ),
         Expanded(flex: 1,
          child:
         Padding(
           padding: const EdgeInsets.all(8.8),
           child: Column(mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Center(child: Text("Physciotherapist:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
           SizedBox(height: 30,),
           ServicesRow(text1: "Name:", text2: "Ahmed"),
           ServicesRow(text1: "Location:", text2: "Mansehra"),
           ServicesRow(text1: "Contact No:", text2: "0311457889"),
           RatingAndShare(),

           
           ],),
         )
          )
      ],),
     );
  }
}
class ServicesRow extends StatelessWidget {
  final text1;
  final text2;
  const ServicesRow({super.key,required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Text(text1,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
      Text(text2,style: TextStyle(fontSize: 18,color: Colors.black),),
      SizedBox(height: 20,)
    ],);
  }
}