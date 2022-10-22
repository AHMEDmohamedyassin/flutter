import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
    @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        margin:EdgeInsets.fromLTRB(10 , 3 , 20 , 5),
        padding: EdgeInsets.all(20),
        decoration:BoxDecoration(
        color: Colors.redAccent,
        // borderRadius: BorderRadius.circular(10),
        borderRadius: BorderRadius.all(Radius.elliptical(10 , 20)),
        border: Border.all(color : Colors.lightBlue , width: 5),
        image: DecorationImage(
          fit: BoxFit.fill , 
          // image: NetworkImage('https://i.internethaber.com/2/1280/800/files/2018/12/2/1923709/1923709-Z2OtJW.jpg')) ,
          image: AssetImage('images/1.jpg')) ,
          repeat : ImageRepeat.repeat
        ),
        child:Text('ahmed mohamed app' , style:TextStyle(
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
