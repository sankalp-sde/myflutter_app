import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0,num2=0,sum=0;
  final TextEditingController t1 = new TextEditingController(text: "0");

  final TextEditingController t2 = new TextEditingController(text: "0");
  void doaddition ()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
       sum = num1+num2;
    });
  }
  void dosubtraction ()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum = num1-num2;
    });
  }
  void domul ()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum = num1*num2;
    });
  }
  void dodiv ()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum = (num1 ~/num2);
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Calculator"),
      ),
      body: new Container(

        padding: const EdgeInsets.all(50.0),
       child: new Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           new Text("Answer : $sum",
         style: new TextStyle(fontSize: 25.0, fontWeight:FontWeight.bold, color: Colors.red , fontStyle: FontStyle.italic ),
       ),
           new TextField(
             keyboardType: TextInputType.number,
             decoration: new InputDecoration
               (hintText: "Enter The First Number"),
        controller: t1,
           )
           ,
      new TextField(
        keyboardType: TextInputType.number,
        decoration: new InputDecoration
          (hintText: "Enter The second Number"),
        controller: t2,
      )
      ,
           new Padding(
               padding: const EdgeInsets.only(top: 25.0)
           ),
           new Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

             children: <Widget>[
               new MaterialButton(
                 child:  new Text("+"),
                 color: Colors.blue,
                 onPressed: doaddition,
               ),
               new MaterialButton(
                 child:  new Text("-"),
                 color: Colors.blue,
                 onPressed: dosubtraction,

    ),
      ],
    ),
               new Padding(
                   padding: const EdgeInsets.only(top: 25.0),
               ),

               new Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   new MaterialButton(
                     child:  new Text("*"),
                     color: Colors.blue,
                     onPressed:  domul,
                   ),
                   new MaterialButton(
                   color: Colors.blue,
                     child:  new Text("/"),
                     onPressed: dodiv,
                   ),

                 ],

               )
             ],

       ),
        ),
      );
  }
}
