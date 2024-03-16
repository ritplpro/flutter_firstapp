import 'package:flutter/material.dart';
import 'Home_p.dart';
import 'package:flutter_firstapp/main.dart';

class MynewPage extends StatelessWidget {
  const MynewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var namecontroller=TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Main menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namecontroller,
                autofocus: true,
                keyboardType:TextInputType.number,
                decoration:InputDecoration(
                  label: Text('Enter here'),
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  )
                ),
            ),

            ElevatedButton(onPressed: (){

              Navigator.push(context,

                  MaterialPageRoute(builder:(context) =>MyHomepage(namecontroller.text.toString()) ));
            }, child: Text('next'))
          ],
        ),
      ),
    );
  }
}


