import 'package:flutter/material.dart';

class TimelinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(4.0),
          child: Card(
            elevation: 8.0,
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: <Widget>[
                        FlutterLogo(
                          size: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Arkar Min Tun"),
                              Text("timestamp")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  
                  Image.network(
                    "https://picsum.photos/200",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom:8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("12"),
                              Icon(Icons.whatshot)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("12"),
                              Icon(Icons.thumb_up),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("12"),
                              Icon(Icons.message),
                            ],
                          ),
                          
                        ],
                      ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}