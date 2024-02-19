
import 'package:flutter/material.dart';

class info2 extends StatelessWidget{
  final IconData icon;
  final String data;
  final String value;
  const info2(
      {super.key,required this.icon,required this.data,required this.value});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 150,
      width: 80,
      child: Column(
        children: [
          Icon(icon),
          const SizedBox(height: 15,),
          Text(data,style: TextStyle(fontWeight:FontWeight.bold,fontSize:15),),
          const SizedBox(height:10,),
          Text(value,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
        ],
      ),
    );
  }
}