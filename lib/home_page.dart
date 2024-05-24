import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  bool evenColorChange =true;

  bool _incrementCounter() {
    setState(() {
      _counter++;
    });
    if(_counter%2==0){
      setState(() {
        evenColorChange=true;
      });
      return evenColorChange;
    }else{
      setState(() {
        evenColorChange=false;
      });
      return evenColorChange;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
    backgroundColor: Colors.yellow,
          title: const Text("FLUTTER APP" ,style: TextStyle(color: Colors.blueAccent,fontStyle: FontStyle.italic,fontSize: 45,fontWeight: FontWeight.bold)),
          ),

      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter, backgroundColor: evenColorChange? Colors.red:Colors.green,child: const Icon(Icons.add),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',

            ),
            const Text("hi this newly added"),
            Text(
              '$_counter',

              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Container(color: Colors.red,height: 50,width: 400,
              child: const Row(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("HOME",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16), ),
                      Text("HOME",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16), ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("SEARCH",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                      Row(
                        children: [
                          Text("newsearch",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                          Text(" add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  Text("BACK",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                  Text("RIDE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),

                ],             ),)
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: _incrementCounter,child: const Icon(Icons.add), backgroundColor: evenColorChange? Colors.red:Colors.green),
    );
  }
}
