import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final text_binary = TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold);
  final text_decimal = TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold);
  String bin = ' ';
  String dec = ' ';


  
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Binary to Decimal'),centerTitle: true,elevation: 0.0),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 3.0),
            Text('Binary',style: text_binary),
            SizedBox(height: height*0.01,width: double.infinity),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(color: Colors.teal,width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Text('$bin',style: text_binary),
            ),
            SizedBox(height: height*0.01,width: double.infinity),
            Text('Decimal',style: text_decimal),
            SizedBox(height: height*0.01,width: double.infinity),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(color: Colors.teal,width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            child: Text('$dec',style: text_decimal),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(child: Text("0",style: text_binary),
                    style: ElevatedButton.styleFrom(onPrimary: Colors.white,primary: Colors.teal),
                    
                    onPressed: () {setState(() => bin = bin + '0');},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(child: Text("1",style: text_binary),
                    style: ElevatedButton.styleFrom(onPrimary: Colors.white,primary: Colors.teal),
                    onPressed: () {setState(() => bin = bin + '1');},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.01,width: double.infinity),
            TextButton(
              onPressed: () {
                setState(() {
                                  dec = int.parse(bin,radix:2).toRadixString(10);
                                });
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.teal,width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Text('Convert',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: height*0.05,width: double.infinity),
            Row(
              children: [
                Expanded(
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                                            int length = bin.length;
                                            if(length>0){
                                              bin = bin.substring(0,length-1);
                                            }
                                          });
                    },
                    child: Icon(Icons.backspace),
                  ),
                ),
                 Expanded(
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                                            bin = '';
                                            dec = '';
                                          });
                    },
                    child: Icon(Icons.clear),
                  ),
                ),

              ],
            ),
            

            
            

          ],
        ),
      ),

      
    );
  }
}