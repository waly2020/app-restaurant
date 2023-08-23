import 'package:flutter/material.dart';
import 'dart:math';


int mainColor = 0xFFEC7B02;
double paddingApp = 10;
Color randomColor(){
  return Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);
}
Text textSection(String text){
  return Text(text,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20));
}