import 'package:flutter/material.dart';
import 'package:project2/Des.dart';

import 'data.dart';

class Topic extends StatelessWidget {
  final Model model;

  Topic({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("topics"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
            itemCount: model.tpc.length,
            itemBuilder: (context, index) {
              return InkWell(
                  child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(00, 20, 00, 10),
                  child: ElevatedButton(
                    onPressed: () {
                      final route =
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Des(model: model);
                      });
                      Navigator.push(context, route);
                    },
                    child: Text(model.tpc[index]),
                  ),
                )
              ]));
            }));
  }
}
