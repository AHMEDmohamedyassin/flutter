import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: ThirdClass(),
    );
  }
}


class HomePage extends StatelessWidget{
  const HomePage({super.key});
    @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      drawer:const  Drawer(),
      body: Container(
        width: 300,
        height: 100,
        margin:const EdgeInsets.fromLTRB(10 , 3 , 20 , 5),
        padding:const  EdgeInsets.all(20),
        alignment: Alignment.topCenter,
        decoration:BoxDecoration(
        color: Colors.redAccent,
        // borderRadius: BorderRadius.circular(10),
        borderRadius:const  BorderRadius.all(Radius.elliptical(10 , 20)),
        border:Border.all(color : Colors.lightBlue , width: 5),
        image:const  DecorationImage(
          fit: BoxFit.fill , 
          // image: NetworkImage('https://i.internethaber.com/2/1280/800/files/2018/12/2/1923709/1923709-Z2OtJW.jpg')) ,
          image: AssetImage('images/1.jpg') , 
          repeat : ImageRepeat.repeat) ,
        boxShadow:const  [
          BoxShadow(blurRadius: 10 , spreadRadius: 5 , color:Colors.black , offset:Offset(20 , 10)),
          ],
        ),
        child:const Text('ahmed mohamed app' , textAlign: TextAlign.start ,style:TextStyle(
          fontSize: 30 ,
          color: Color.fromRGBO(100, 100, 100, 0.5) ,
          decoration:TextDecoration.underline , 
          shadows: [
            Shadow(color: Color.fromARGB(170, 30, 65, 141) , blurRadius: 15.5 , offset: Offset(12 , 10)),
        ]) ,
        )),
    );
  }
}


class SecondPage extends StatelessWidget{
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Image.network('https://i.internethaber.com/2/1280/800/files/2018/12/2/1923709/1923709-Z2OtJW.jpg' ,
      width: 100,
      height: 100,
      ),
    );
  }
}


class ThirdClass extends StatelessWidget{
  const ThirdClass({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        color: Color.fromARGB(255, 40, 119, 183),
        width:500,
        child : Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.end,

          crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text('first child'),
            Text('second child'),
            Text('third child'),
            Container(
              color: Colors.red,
              child: Text('hello world')
              ),
          ],
        ),
      ),
    );
  }
}

// notes
// 1 => card (15)