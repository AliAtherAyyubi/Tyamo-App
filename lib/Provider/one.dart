import 'package:flutter/material.dart';
import 'package:tyamo_app/Provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:tyamo_app/Provider/second.dart';

class SamplePage extends StatelessWidget {
  // const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyData>(builder: (context, data, child) {
      return Scaffold(
        body: Container(
          // height: 200,
          child: Column(
            children: [
              Text(
                'Provider Example',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Total items: ${data.names.length}'),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                height: 400,
                width: double.infinity,
                color: Colors.grey[300],
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: data.names.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      margin: EdgeInsets.all(5),
                      width: 50,
                      color: Colors.blue,
                      child: Center(
                          child: Text(
                        '${data.names[index]}',
                        style: TextStyle(color: Colors.white),
                      )),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    data.increment();
                  },
                  style: ElevatedButton.styleFrom(fixedSize: Size(90, 50)),
                  child: Text('+')),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text('Second Page'))
            ],
          ),
        ),
      );
    });
  }
}
