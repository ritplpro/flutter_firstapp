
import 'package:flutter/material.dart';


class MyHomepage extends StatefulWidget {
  var nameFromHome;

  MyHomepage(this.nameFromHome);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  RangeValues values= RangeValues(0,100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels=RangeLabels(
        values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
          title: Text('New page',style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold),),
          backgroundColor:Theme.of(context).colorScheme.primary

      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSlider(
                values: values,
                labels: labels,
                divisions: 20,
                activeColor: Colors.limeAccent,
                inactiveColor: Colors.grey.shade500,
                min: 0,
                max: 100,

                onChanged: (newValue){
                  values=(newValue);
                  setState(() {

                  });

            }),
            Center(child: Text("welcome ${widget.nameFromHome}",style: TextStyle(fontSize: 16),)),
          ],
        ),
      ),

    );
  }
}


