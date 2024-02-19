import 'package:flutter/material.dart';

class Hourlyforecast extends StatelessWidget{
  final String time;
  final IconData icons;
  final String value;
  const Hourlyforecast({super.key, required this.time, required this.icons, required this.value});
  @override
  Widget build(BuildContext context){
    return  SizedBox(
      width: 100,
      height: 100,
      child: Card(
        elevation: 20,
        child: Container(
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(2300),
          ),
          child:  Padding(
            padding: EdgeInsets.all(3.0),
            child: Column(
              children: [
                Text(time,style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),),
                SizedBox(height: 2,),
                Icon(icons,size: 30),
                SizedBox(height: 3,),
                Text(value)
              ],
            ),
          ),
        ),
      ),
    );
  }
}